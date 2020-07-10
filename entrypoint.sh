#!/bin/sh -l
PACKAGE_JSON_PATH="${1-.}"
echo "Reading package.json from ${PACKAGE_JSON_PATH}/package.json"
PACKAGE_VERSION=$(cat ${PACKAGE_JSON_PATH}/package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[",]//g' | tr -d '[[:space:]]')

echo ::set-output name=current-version::$PACKAGE_VERSION
