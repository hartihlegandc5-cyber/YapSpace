#!/usr/bin/env bash
set -euo pipefail
: "${API_URL:?Set API_URL to your deployed HTTPS backend URL}"
[ -d web ] || ./prepare.sh
flutter build web --release --dart-define="API_URL=${API_URL}"
echo 'Upload the contents of build/web to your static web host.'
