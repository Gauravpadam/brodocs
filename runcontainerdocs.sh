#!/bin/sh
set -e

rm -rf ./documents/*
cp /tmp/*/src/github.com/Gauravpadam/reference-docs/gen-kubectldocs/generators/manifest.json /brodocs/manifest.json
cp /tmp/*/src/github.com/Gauravpadam/reference-docs/gen-kubectldocs/generators/includes/* /brodocs/documents/
node brodoc.js
cp -r /brodocs/* /tmp/*/src/github.com/Gauravpadam/reference-docs/gen-kubectldocs/generators/build/