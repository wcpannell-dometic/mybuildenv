#!/bin/sh

apk add npm neovim py3-pynvim curl fish

# Install dotfiles
git clone https://github.com/wcpannell/dotfiles
cd dotfiles
sh deploy.sh

# set fish as default shell for root
sed -i "1s/ash/fish/" /etc/passwd
