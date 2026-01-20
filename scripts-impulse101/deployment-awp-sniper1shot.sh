#!/usr/bin/env bash
set -e

(
  source ./scripts-impulse101/load_vars_carbine_m4a1.sh "$APP" "$ENV"

  echo "Deploying $APP to $ENV"
  terraforms
)
# ← variables are gone automatically here
