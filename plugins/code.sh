# mkdir and then open in vscode
mkdircode() {
    mkdir -p "$1"
    code "$1"
}
