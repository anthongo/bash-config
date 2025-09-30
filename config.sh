#!/usr/bin/bash
# shellcheck disable=SC1090

for file in ~/.config/bash/aliases/*.sh; do
    source "$file"
done

for file in ~/.config/bash/plugins/*.sh; do
    source "$file"
done