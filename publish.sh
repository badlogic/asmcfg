#!/bin/sh
set -e
rm -rf node_modules
rm -rf package-lock.json
npm install
npm publish --access public