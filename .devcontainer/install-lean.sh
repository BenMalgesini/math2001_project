#!/usr/bin/env bash
set -euo pipefail

curl --proto '=https' --tlsv1.2 -sSfL \
  https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh \
  | sh -s -- -y --default-toolchain none

# Running Lean from the project directory downloads the pinned toolchain now,
# so it is ready before the student starts editing.
"$HOME/.elan/bin/lean" --version
