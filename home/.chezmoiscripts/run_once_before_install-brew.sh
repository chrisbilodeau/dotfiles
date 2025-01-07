#!/bin/bash

set -eufo pipefail

if [ -x "/home/linuxbrew/.linuxbrew/bin/brew" ] || [ -x "/opt/homebrew/bin/brew" ];
then
    echo "Homebrew already installed..."
else
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
