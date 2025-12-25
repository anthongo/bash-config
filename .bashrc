#!/usr/bin/bash

alias source-bashrc="source ~/.bashrc"
alias ghrc="gh repo clone"
alias ..="cd .."

alias commit="git commit --message"
alias amend-commit="git commit --amend --message"

alias si="scoop install"
alias sinfo="scoop info"
alias ss="scoop search"
alias sup="scoop update"
alias sun="scoop uninstall"
alias sl="scoop list"

alias wi="winget install"
alias wup="winget upgrade"
alias wun="winget uninstall"
alias ws="winget search"
alias winfo="winget show"
alias wl="winget list"

if [ -x bat ]; then
    alias cat=bat
fi

for cmd in j z; do
    alias $cmd=cd
done

for cmd in clone pull push status branch checkout add restore show log merge; do
    alias $cmd="git $cmd"
done

# mkdir and then open in vscode
mkdircode() {
    mkdir -p "$1"
    code "$1"
}
