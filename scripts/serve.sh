#!/bin/bash

## Get the current path of the script
_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
## Get the path of project root directory
ROOT_DIR="${_DIR}/.."

## Load library functions
# . ${_DIR}/lib.sh

## Changed the current directory to the project root directory
pushd "${ROOT_DIR}" > /dev/null

## Add bundle binary executable to PATH (onetime)
# add_gems_user_dir_to_path

## Start a local server
bundle exec jekyll serve

## Go back to the original directory
popd > /dev/null
