#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
EXPECTED_ANIMATION=dc95c9372c15785ea7bf4884a638de21b4eb62bc22457f5c7d50a5209767c025
EXPECTED_RELEASE=7dcbd73ff2e1739c9f35bd37084a4f9db754a50214a785fbdaaa1f88292cb73a
ANIMATION="$ROOT/module/system/product/media/bootanimation.zip"
RELEASE="$ROOT/release/tcl-unbranded-bootanimation-magisk-v1.0.0.zip"
[ "$(shasum -a 256 "$ANIMATION" | cut -d ' ' -f 1)" = "$EXPECTED_ANIMATION" ]
[ "$(shasum -a 256 "$RELEASE" | cut -d ' ' -f 1)" = "$EXPECTED_RELEASE" ]
unzip -t "$ANIMATION"
unzip -t "$RELEASE"
[ "$(unzip -p "$RELEASE" system/product/media/bootanimation.zip | shasum -a 256 | cut -d ' ' -f 1)" = "$EXPECTED_ANIMATION" ]
echo "Verified animation and release artifacts."
