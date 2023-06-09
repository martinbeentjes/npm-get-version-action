#!/bin/sh -l
PACKAGE_JSON_PATH="${1-.}"
echo "Reading package.json from ${PACKAGE_JSON_PATH}/package.json"
PACKAGE_VERSION=$(cat ${PACKAGE_JSON_PATH}/package.json | jq '.version' | tr -d '"')

echo "major=$(cut -d '.' -f 1 <<< ${PACKAGE_VERSION})" >> $GITHUB_OUTPUT
echo "minor=$(cut -d '.' -f 1,2 <<< ${PACKAGE_VERSION})" >> $GITHUB_OUTPUT
echo "full=${PACKAGE_VERSION}" >> $GITHUB_OUTPUT
