#!/bin/bash

set -euo pipefail

fontPaths=$(fc-list --format="%{file}\n" "$1")

for fontPath in $fontPaths
do
  pyftfeatfreeze --suffix --features calt,case,ss02,cpsp,dlig,frac,onum "$fontPath"
done
