#!/bin/bash

set -eufo pipefail

echo "Bat theme install not curretly supported..."
exit 0

echo "Downloading bat Catppuccin Latte theme..."
THEMES_DIR="$(bat --config-dir)/themes"
mkdir -p $THEMES_DIR
curl --silent --fail --show-error --output-dir $THEMES_DIR --output Catppuccin-Latte.tmTheme  --location "https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Latte.tmTheme"
echo "Rebuilding bat cache..."
bat cache --build
