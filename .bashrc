#!/usr/bin/bash

#region general aliases
alias source-bashrc="source ~/.bashrc"
alias ghrc="gh repo clone"
alias ..="cd .."
#endregion

#region git commit
alias commit="git commit --message"
alias amend-commit="git commit --amend --message"
#endregion

#region scoop
alias si="scoop install"
alias sinfo="scoop info"
alias ss="scoop search"
alias sup="scoop update"
alias sun="scoop uninstall"
alias sl="scoop list"
#endregion

#region winget
alias wi="winget install"
alias wup="winget upgrade"
alias wun="winget uninstall"
alias ws="winget search"
alias winfo="winget show"
alias wl="winget list"
#endregion

#region ls
alias l=ls
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
#endregion

# automatically change spelling
shopt -s cdspell

if [ -x "$(command -v bat)" ]; then
    alias cat=bat
fi

for cmd in j z; do
    alias $cmd=cd
done

for cmd in clone pull push status branch checkout add restore show log merge; do
    alias $cmd="git $cmd"
done

#region functions
mkdircode() {
    mkdir -p "$1"
    code "$1"
}
#endregion
