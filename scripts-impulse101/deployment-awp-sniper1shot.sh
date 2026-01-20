#!/usr/bin/env bash
set -e

(
  source ./scripts-impulse101/load_vars.sh "$APP" "$ENV"

  echo "Deploying $APP to $ENV"
  terraforms
)
# ← variables are gone automatically here
