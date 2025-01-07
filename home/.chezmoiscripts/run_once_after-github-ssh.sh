#!/bin/bash

set -eufo pipefail

echo "Confgiuring Chezmoi to use ssh..."
cd ~/.local/share/chezmoi/
git remote set-url origin git@github.com:chrisbilodeau/dotfiles.git
