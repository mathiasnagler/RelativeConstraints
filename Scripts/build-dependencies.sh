#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR/.."

if ! command -v carthage > /dev/null; then
  printf 'Carthage is not installed.\n'
  printf 'See https://github.com/Carthage/Carthage for install instructions.\n'
  exit 1
fi

carthage build --platform iOS


