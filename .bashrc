#!/usr/bin/bash

# region general aliases
alias source-bashrc="source ~/.bashrc"
alias ..="cd .."
# endregion

# region git commit
alias commit="git commit --message"
alias amend-commit="git commit --amend --message"
# endregion

# region scoop
alias si="scoop install"
alias sinfo="scoop info"
alias ss="scoop search"
alias sup="scoop update"
alias sun="scoop uninstall"
alias sl="scoop list"
# endregion

# region winget
alias wi="winget install"
alias wup="winget upgrade"
alias wun="winget uninstall"
alias ws="winget search"
alias winfo="winget show"
alias wl="winget list"
# endregion

# region ls
alias l=ls
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
# endregion

# automatically change spelling
shopt -s cdspell

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set vim mode
set -o vi

if [ -x "$(command -v bat)" ]; then
    alias cat=bat
fi

for cmd in j z; do
    # shellcheck disable=SC2139
    alias $cmd=cd
done

for cmd in clone pull push status branch checkout add restore show log merge; do
    # shellcheck disable=SC2139
    alias $cmd="git $cmd"
done

# region functions
mkdircode() {
    mkdir -p "$1"
    code "$1"
}

mkdircd() {
    mkdir -p "$1"
    cd "$1" || exit
}

help() {
    "$@" --help 2>&1 | bat --plain --language=help
}

gh-clone() {
    local base="https://github.com"

    for repo in "$@"; do
        clone "$base/$repo"
    done
}
# endregion

# region gh clone multiple
gh-clone-multiple() {
    local base=$1

    # skip first argument
    shift

    for repo in "$@"; do
        gh-clone "$base/$repo"
    done
}

for cmd in gh-clone-org gh-clone-user; do
    # shellcheck disable=SC2139
    alias $cmd=gh-clone-multiple
done
# endregion

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
# shellcheck disable=SC1091
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

if [ -x "$(command -v uv)" ]; then
    eval "$(uv generate-shell-completion bash)"
fi
