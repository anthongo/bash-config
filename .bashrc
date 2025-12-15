#!/usr/bin/bash
# shellcheck disable=SC1090

alias cat=bat

for file in ~/.config/bash/plugins/*.sh; do
    source "$file"
done
