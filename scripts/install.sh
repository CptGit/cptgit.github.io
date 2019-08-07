#!/bin/bash

## Get the current path of the script
_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
## Get the path of project root directory
ROOT_DIR="${_DIR}/.."

## Changed the current directory to the project root directory
pushd "${ROOT_DIR}" > /dev/null

## Install dependent packages on Ubuntu if they don't exist
declare -a PKGS=("ruby-full" "build-essential" "zlib1g-dev")
for pkg in "${PKGS[@]}"; do
        dpkg -s "${pkg}" > /dev/null || sudo apt install "${pkg}"
done

## Uncomment the following line if you are behind the GFW
# gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
## Install bundler
gem install bundler -v 2.0.2

## Add bundle binary executable to PATH (onetime)
BUNDLE_PATH=$( gem env | grep 'EXECUTABLE DIRECTORY' | sed 's/[^/]*\//\//' | sed 's/[ \t]*$//' )
export PATH="${BUNDLE_PATH}:${PATH}"

## Uncomment the following line if you are behind the GFW
# bundle config mirror.https://rubygems.org https://gems.ruby-china.com
## Install dependent gems for the project
bundle install --path vendor/bundle

## Go back to the original directory
popd > /dev/null
