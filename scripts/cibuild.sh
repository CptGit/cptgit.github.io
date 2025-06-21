#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
bundle exec htmlproofer --ignore-urls '/www.flaticon.com/,/www.linkedin.com/,/www.freepik.com/,/www.bupt.edu.cn/' ./_site
