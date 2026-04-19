from __future__ import annotations

import json
from pathlib import Path
from typing import Any

import yaml
from openai import OpenAI


def load_openai_client_from_yaml(config_path: str | Path) -> OpenAI:
    """
    Load an OpenAI API key from a YAML config file and return an authenticated client.

    Supported YAML shapes:

    1)
    openai:
      api_key: "sk-..."

    2)
    api_key: "sk-..."
    """
    config_path = Path(config_path)

    if not config_path.exists():
        raise FileNotFoundError(f"Config file not found: {config_path}")

    with config_path.open("r", encoding="utf-8") as f:
        data: Any = yaml.safe_load(f)

    if not isinstance(data, dict):
        raise ValueError("YAML config must contain a top-level mapping/object.")

    api_key = None

    openai_block = data.get("openai")
    if isinstance(openai_block, dict):
        api_key = openai_block.get("api_key")

    if not api_key:
        api_key = data.get("api_key")

    if not isinstance(api_key, str) or not api_key.strip():
        raise ValueError(
            "No valid API key found. Expected either 'openai.api_key' or top-level 'api_key'."
        )

    return OpenAI(api_key=api_key.strip())
