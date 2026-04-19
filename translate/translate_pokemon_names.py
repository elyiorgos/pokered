from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any

import yaml
from openai import OpenAI
from utils import load_openai_client_from_yaml

POKEMON_NAMES_TRANSLATION_SCHEMA = {
    "name": "pokemon_names_translation",
    "strict": True,
    "schema": {
        "type": "object",
        "properties": {
            "translated_names": {"type": "array", "items": {"type": "string"}}
        },
        "required": ["translated_names"],
        "additionalProperties": False,
    },
}


DNAME_RE = re.compile(r'dname\s+"([^"]*)"')
LABEL_RE = re.compile(r"^\s*([A-Za-z0-9_.$?@#]+::)")
TABLE_WIDTH_RE = re.compile(r"(table_width\s+NAME_LENGTH\s*-\s*1)")
ASSERT_RE = re.compile(r"(assert_table_length\s+[A-Za-z0-9_.$?@#]+)")


def _parse_names_asm(source_text: str) -> tuple[str, str, list[str], str]:
    """
    Parse names.asm and return:
      label_line, table_width_line, original_names, assert_line
    """
    label_match = LABEL_RE.search(source_text)
    table_width_match = TABLE_WIDTH_RE.search(source_text)
    assert_match = ASSERT_RE.search(source_text)
    names = DNAME_RE.findall(source_text)

    if not label_match:
        raise ValueError("Could not find MonsterNames label in source file.")
    if not table_width_match:
        raise ValueError("Could not find 'table_width NAME_LENGTH - 1' in source file.")
    if not assert_match:
        raise ValueError("Could not find assert_table_length line in source file.")
    if not names:
        raise ValueError("Could not find any dname entries in source file.")

    return (
        label_match.group(1),
        table_width_match.group(1),
        names,
        assert_match.group(1),
    )


def _rebuild_names_asm(
    label_line: str,
    table_width_line: str,
    translated_names: list[str],
    assert_line: str,
) -> str:
    """
    Rebuild names_sr.asm in a clean multiline format.
    """
    lines = [label_line, f"\t{table_width_line}"]
    lines.extend(f'\tdname "{name}"' for name in translated_names)
    lines.append(f"\t{assert_line}")
    return "\n".join(lines) + "\n"


def _validate_translated_names(
    original_names: list[str],
    translated_names: list[str],
    *,
    max_name_len: int = 10,
) -> None:
    if len(translated_names) != len(original_names):
        raise ValueError(
            f"Expected {len(original_names)} translated names, got {len(translated_names)}."
        )

    for i, name in enumerate(translated_names):
        if not isinstance(name, str) or not name.strip():
            raise ValueError(f"Translated name at index {i} is empty or not a string.")

        if len(name) > max_name_len:
            raise ValueError(
                f"Translated name at index {i} exceeds {max_name_len} characters: {name!r}"
            )


def translate_pokemon_names_to_serbian(
    source_path: str | Path,
    output_path: str | Path,
    *,
    config_path: str | Path = "config.yaml",
    model: str = "gpt-5-mini",
    max_name_len: int = 10,
) -> str:
    """
    Translate pokered/data/pokemon/names.asm into Serbian and write names_sr.asm.

    Rules enforced by prompt and validation:
    - standard Serbian
    - ekavian
    - Latin script
    - preserve naming intent as much as possible
    - maximum name length = 10 characters
    - preserve order and count exactly

    Returns the translated file content.
    """
    source_path = Path(source_path)
    output_path = Path(output_path)

    if not source_path.exists():
        raise FileNotFoundError(f"Source ASM file not found: {source_path}")

    source_text = source_path.read_text(encoding="utf-8")
    label_line, table_width_line, original_names, assert_line = _parse_names_asm(
        source_text
    )

    client = load_openai_client_from_yaml(config_path)

    system_prompt = f"""
You are translating Pokémon species names for a Pokémon Red disassembly project.

Task:
Translate the Pokémon names into standard Serbian, ekavian, Latin script.

Critical rules:
1. Preserve the number of names exactly.
2. Preserve the order exactly.
3. Preserve naming intent as much as possible.
4. Maximum length for every translated name is {max_name_len} characters.
5. Prefer names that feel like natural fan-localization names, not literal dictionary glosses.
6. Keep names concise, game-like, and memorable.
7. If a name works well as a conservative transliteration, you may use that, but sparingly.
8. For names like MISSINGNO., keep them unchanged.
9. Return JSON only matching the schema.
10. Do not add explanations.

Example of naming intent:
Bulbasaur -> Lukosaur: reasoning: lukovica means bulb, saurus captures the dinosaur element.
""".strip()

    user_payload = {
        "task": (
            "Translate each Pokémon species name into Serbian. "
            "Preserve order exactly. Each output must be at most "
            f"{max_name_len} characters."
        ),
        "names": original_names,
    }

    response = client.chat.completions.create(
        model=model,
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": json.dumps(user_payload, ensure_ascii=False)},
        ],
        response_format={
            "type": "json_schema",
            "json_schema": POKEMON_NAMES_TRANSLATION_SCHEMA,
        },
    )

    content = response.choices[0].message.content
    if not content:
        raise ValueError("Model returned empty content.")

    data = json.loads(content)
    translated_names = data.get("translated_names")

    if not isinstance(translated_names, list):
        raise ValueError("Model returned invalid translated_names.")

    _validate_translated_names(
        original_names,
        translated_names,
        max_name_len=max_name_len,
    )

    translated_file_content = _rebuild_names_asm(
        label_line=label_line,
        table_width_line=table_width_line,
        translated_names=translated_names,
        assert_line=assert_line,
    )

    output_path.write_text(translated_file_content, encoding="utf-8", newline="\n")
    return translated_file_content


if __name__ == "__main__":
    translate_pokemon_names_to_serbian(
        source_path="../data/pokemon/names.asm",
        output_path="translated/data/pokemon/names_sr.asm",
        config_path="config.yaml",
        model="gpt-5-mini",
        max_name_len=10,
    )
