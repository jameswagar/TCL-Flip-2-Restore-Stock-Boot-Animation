#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
OUT="$ROOT/dist/tcl-unbranded-bootanimation-magisk-v1.0.0.zip"
mkdir -p "$ROOT/dist"
rm -f "$OUT"
(
  cd "$ROOT/module"
  zip -q -r "$OUT" module.prop README.md system
)
unzip -t "$OUT"
shasum -a 256 "$OUT"
