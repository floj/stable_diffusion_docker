#!/usr/bin/env bash
set -euo pipefail
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

exec docker build -t floj/stable_diffusion "$script_dir"
