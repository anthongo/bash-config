source_blesh() {
  # shellcheck source=/dev/null
  source ~/ble.sh/out/ble.sh
}

install_blesh() {
  git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git
  make -C ~/ble.sh
  source_blesh
}

# if [ -d ~/ble.sh ]; then
#   source_blesh
# fi
