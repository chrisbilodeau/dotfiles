#!/bin/sh

set -e 

main () {
  echo "#### Bootstrapping dotfiles ####"
  bin_dir="${HOME}/.local/bin"
  if [ ! "$(command -v chezmoi)" ]; then
    install_chezmoi ${bin_dir}
    chezmoi="${bin_dir}/chezmoi"
  else
    chezmoi="$(command -v chezmoi)"
    echo "Using existing chezmoi install: ${chezmoi}"
  fi
  echo "Initailizing dotfiles..."
  exec "${chezmoi}" init --apply chrisbilodeau
  echo "#### Finished bootstrapping dotfiles ####"
}

install_chezmoi () {
  echo "Installing chezmoi to ${1}..."
    if [ "$(command -v curl)" ]; then
      sh -c "$(curl --silent --fail --show-error --location https://git.io/chezmoi)" -- -b "${1}"
    elif [ "$(command -v wget)" ]; then
      sh -c "$(wget -qO- https://git.io/chezmoi)" -- -b "${1}"
    else
      echo "curl or wget is required to install chezmoi" >&2
      exit 1
    fi   
}

main
