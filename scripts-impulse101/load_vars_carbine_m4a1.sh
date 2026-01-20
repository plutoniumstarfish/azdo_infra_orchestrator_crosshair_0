#!/usr/bin/env bash
set -e

APP="$1"
ENV="$2"

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

source "$BASE_DIR/config/env/shared.sh"
source "$BASE_DIR/config/env/$ENV.sh"
source "$BASE_DIR/config/apps/$APP.sh"

OVERRIDE="$BASE_DIR/config/overrides/$APP-$ENV.sh"
[[ -f "$OVERRIDE" ]] && source "$OVERRIDE"
