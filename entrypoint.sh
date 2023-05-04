#!/bin/sh -l
PACKAGE_JSON_PATH="${1-.}"
echo "Reading package.json from ${PACKAGE_JSON_PATH}/package.json"
PACKAGE_VERSION=$(python ${PACKAGE_JSON_PATH}/setup.py -V)

echo "current-version=${PACKAGE_VERSION}" >> $GITHUB_OUTPUT
