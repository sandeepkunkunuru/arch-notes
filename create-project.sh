#!/bin/bash
set -ex

name="${1}"

mkdir "${name}"
mkdir "${name}/src"
mkdir "${name}/build"
touch "${name}/src/index.ts"
touch "${name}/README.md"

pushd "${name}"

npm init -y
tsc --init
npm i @types/node
npm i -g typescript ts-node
npm i -g nodemon concurrently

popd
# manually update scripts inside package.json
# manually update rootDir and outDir in tsconfig.json
