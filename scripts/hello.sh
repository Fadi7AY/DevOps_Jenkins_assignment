#!/usr/bin/env bash

set -euo pipefail

NAME="${1:-World}"
NOW="$(date)"

if git rev-parse --short HEAD >/dev/null 2>&1; then
  
  SHA="$(git rev-parse --short HEAD)"
else
  SHA="N/A"
fi

echo "Date: ${NOW}"
echo "Commit: ${SHA}"
echo "Name: ${NAME}"

{ # for my local test
  echo "Date: ${NOW}"
  echo "Commit: ${SHA}"
  echo "Name: ${NAME}"

} > output.txt