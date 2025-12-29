#!/usr/bin/env bash

set -euo pipefail

# Serve the Angular build output from the correct path
# Angular outputs to dist/RentACar-FrontEnd based on angular.json configuration

if [[ -n "${PORT:-}" ]]; then
  exec npx serve -s dist/RentACar-FrontEnd -l "${PORT}"
else
  exec npx serve -s dist/RentACar-FrontEnd -l 4200
fi

