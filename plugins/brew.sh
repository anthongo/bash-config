eval_brew() {
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    brew_aliases
}

install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval_brew
}

brew_aliases() {
    alias bs="brew search"
    alias bi="brew install"
    alias bun="brew uninstall"
    alias bup="brew upgrade"
    alias binfo="brew info"
}

if [ -d /home/linuxbrew/.linuxbrew ]; then
    eval_brew
fi
