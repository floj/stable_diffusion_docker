#!/usr/bin/env bash
set -euo pipefail
cachedir=$(pwd)/cache
[[ -d $cachedir ]] || mkdir "$cachedir"
exec docker run -ti --rm \
  --cpus="4.0" \
  --memory="10g" \
  -u "$(id -u):$(id -g)" \
  -w /out \
  -v "$(pwd):/out" \
  -e HOME=/home/stable_diffusion \
  -v "$(pwd)/cache:/home/stable_diffusion/.cache/" \
  floj/stable_diffusion bash
