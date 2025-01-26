#!/bin/sh

# Remove existing node_modules
[ -d node_modules ] && echo "Removing node_modules..." && rm -rdf node_modules

# Install dev dependencies
echo "Installing npm dev dependencies..."
npm install --save-dev eslint \
    @eslint/js \
    @types/eslint__js \
    @types/node \
    @types/jest \
    @typescript-eslint/eslint-plugin \
    @typescript-eslint/parser \
    eslint-config-prettier \
    eslint-plugin-jest \
    eslint-plugin-prettier \
    globals \
    jest \
    prettier \
    ts-jest \
    ts-node \
    typescript \
    typescript-eslint

rm setup.sh
