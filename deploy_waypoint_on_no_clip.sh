#!/usr/bin/env bash
set -euo pipefail

APP_NAME="${1:?Usage: deployment.sh <RESOURCE_NAME>}"

generate_vars() {
  echo "[generate_vars] Generating runtime files for $RESOURCE_NAME"
}

load_vars() {
  echo "[load_vars] Loading generated files for $RESOURCE_NAME"
}

run_terraform() {
  echo "[terraform] Applying infra for $RESOURCE_NAME"
}

sleep_step() {
  echo "[sleep] Waiting 10 seconds"
  sleep 10
}


case "$RESOURCE_NAME" in

   accountapi_lambda)
    generate_vars
    load_vars
    sleep_step
    run_terraform
    ;;

   reportsapi_lambda)
    generate_vars
    load_vars
    run_terraform
    ;;

  *)
    echo "unknown APP_NAME: $RESOURCE_NAME"
    exit 1
    ;;
esac
