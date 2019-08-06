#!/bin/bash

_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT_DIR="${_DIR}/.."

(
        cd "${ROOT_DIR}"
        bundle exec jekyll serve
)
