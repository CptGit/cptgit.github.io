#!/bin/bash

function add_gems_user_dir_to_path() {
        ### Add gem user directory to PATH (onetime)
        if which ruby >/dev/null && which gem >/dev/null; then
                PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
        fi
}
