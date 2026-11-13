#!/usr/bin/env bash
set -euo pipefail
command -v flutter >/dev/null || { echo 'Flutter SDK is not installed or not on PATH.' >&2; exit 1; }
if [ ! -d web ]; then
  flutter create --platforms=web --org com.yapspace --project-name yapspace .
  cp web-assets/index.html web/index.html
  cp web-assets/manifest.json web/manifest.json
  cp web-assets/favicon.svg web/favicon.svg
fi
flutter pub get
