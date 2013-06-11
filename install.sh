#!/usr/bin/env bash
DIR="$(pwd)"

cd "${DIR}/muchmala-io" && npm install
cd "${DIR}/muchmala-api" && npm install
cd "${DIR}/muchmala-cli" && npm install
cd "${DIR}/muchmala-cmn" && npm install
cd "${DIR}/muchmala-static" && npm install
cd "${DIR}"

ln -s "${DIR}/muchmala-cmn" muchmala-io/node_modules/muchmala-cmn
ln -s "${DIR}/muchmala-cmn" muchmala-api/node_modules/muchmala-cmn
ln -s "${DIR}/muchmala-cmn" muchmala-cli/node_modules/muchmala-cmn
ln -s "${DIR}/muchmala-cmn" muchmala-static/node_modules/muchmala-cmn