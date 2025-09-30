#!/usr/bin/bash
# shellcheck disable=SC1090

export LANG="en_US.UTF-8"

USER=""
USER=$(id -un)
export USER

for file in ~/.config/bash/aliases/*.sh; do
    source "$file"
done

for file in ~/.config/bash/plugins/*.sh; do
    source "$file"
done