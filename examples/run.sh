#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_selfscan info
PYTHONPATH=src python -m gbt_selfscan check --payload '{}'
PYTHONPATH=src python -m gbt_selfscan run   --payload '{}'
