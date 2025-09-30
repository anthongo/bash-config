#!/usr/bin/bash
# shellcheck disable=SC1090

# Check if out directory exists, if not, build ble.sh
if [[ ! -d ~/.config/bash/ble.sh/out ]]; then
    echo "ble.sh out directory not found. Building ble.sh..."
    make -C ~/.config/bash/ble.sh
fi

source ~/.config/bash/ble.sh/out/ble.sh