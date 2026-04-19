from __future__ import annotations

import json
from pathlib import Path
from typing import Any

from openai import OpenAI
from utils import load_openai_client_from_yaml

DEX_TEXT_TRANSLATION_SCHEMA = {
    "name": "dex_text_translation",
    "strict": True,
    "schema": {
        "type": "object",
        "properties": {"translated_file_content": {"type": "string"}},
        "required": ["translated_file_content"],
        "additionalProperties": False,
    },
}


def translate_dex_text_to_serbian(
    source_path: str | Path,
    output_path: str | Path,
    *,
    config_path: str | Path = "config.yaml",
    model: str = "gpt-5-mini",
) -> str:
    """
    Translate pokered/data/pokemon/dex_text.asm into standard Serbian
    (ekavian, Latin script) and write the result to dex_text_sr.asm.

    Returns the translated file content.
    """
    source_path = Path(source_path)
    output_path = Path(output_path)

    if not source_path.exists():
        raise FileNotFoundError(f"Source ASM file not found: {source_path}")

    asm_text = source_path.read_text(encoding="utf-8")

    client = load_openai_client_from_yaml(config_path)

    system_prompt = """
You are translating a Pokémon Red disassembly source file.

Task:
Translate all player-visible English text in this ASM file into standard Serbian,
ekavian, Latin script.

Critical formatting rules:
1. Return the COMPLETE translated ASM file content.
2. Preserve ASM structure exactly unless translating visible text requires changing
   only quoted text content.
3. Preserve labels, directives, macros, commas, comments, spacing conventions,
   and line order as much as possible.
4. Translate only player-visible English text.
5. Preserve placeholders, control tokens, and special symbols exactly (specifically never translate or change #MON).
6. Do not add explanations.
7. Do not wrap the result in markdown fences.
8. Output valid ASM text suitable to save directly as dex_text_sr.asm.
9. The translated string in each line should never be more than 18 characters long.

Language rules:
- Use standard Serbian.
- Use ekavian.
- Use Latin script only.
- Keep style concise and natural for Game Boy Pokédex text.
""".strip()

    user_prompt = f"""
Translate this ASM source file into Serbian.

Source file name:
{source_path.name}

Source content:
{asm_text}
""".strip()

    response = client.chat.completions.create(
        model=model,
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt},
        ],
        response_format={
            "type": "json_schema",
            "json_schema": DEX_TEXT_TRANSLATION_SCHEMA,
        },
    )

    content = response.choices[0].message.content
    if not content:
        raise ValueError("Model returned empty content.")

    data = json.loads(content)
    translated_file_content = data.get("translated_file_content")
    if (
        not isinstance(translated_file_content, str)
        or not translated_file_content.strip()
    ):
        raise ValueError("Model returned invalid translated_file_content.")

    output_path.write_text(translated_file_content, encoding="utf-8", newline="\n")
    return translated_file_content


if __name__ == "__main__":
    translated = translate_dex_text_to_serbian(
        source_path="../data/pokemon/dex_text.asm",
        output_path="translated/data/pokemon/dex_text_sr.asm",
        config_path="config.yaml",
        model="gpt-5-mini",
    )
    print("Wrote translated file.")
