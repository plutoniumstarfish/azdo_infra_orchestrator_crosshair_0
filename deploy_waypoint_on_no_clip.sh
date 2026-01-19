#!/usr/bin/env bash
set -euo pipefail

APP_NAME="${1:?Usage: deployment.sh <APP_NAME>}"

generate_vars() {
  echo "[generate_vars] Generating runtime files for $APP_NAME"
}

load_vars() {
  echo "[load_vars] Loading generated files for $APP_NAME"
}

run_terraform() {
  echo "[terraform] Applying infra for $APP_NAME"
}

sleep_step() {
  echo "[sleep] Waiting 10 seconds"
  sleep 10
}
