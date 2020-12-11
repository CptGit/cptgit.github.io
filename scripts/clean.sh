#!/bin/bash

## Get the current path of the script
_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
## Get the path of project root directory
ROOT_DIR="${_DIR}/.."

## Changed the current directory to the project root directory
pushd "${ROOT_DIR}" > /dev/null

## Clean
bundle exec jekyll clean

## Go back to the original directory
popd > /dev/null
