#!/bin/bash

_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT_DIR="${_DIR}/.."

(
        cd "${ROOT_DIR}"

        sudo apt install ruby-full build-essential zlib1g-dev

        ## Uncomment the following line if you are behind the GFW
        # gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
        gem install bundler -v 2.0.2

        BUNDLE_PATH=$( gem env | grep 'EXECUTABLE DIRECTORY' | sed 's/[^/]*\//\//' | sed 's/[ \t]*$//' )
        export PATH="${BUNDLE_PATH}:${PATH}"

        ## Uncomment the following line if you are behind the GFW
        # bundle config mirror.https://rubygems.org https://gems.ruby-china.com

        bundle install --path vendor/bundle
)
