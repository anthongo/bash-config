#!/usr/bin/bash

if [ -d /home/linuxbrew/.linuxbrew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

alias bs="brew search"
alias bi="brew install"
alias bun="brew uninstall"
alias bup="brew upgrade"
alias binfo="brew info"