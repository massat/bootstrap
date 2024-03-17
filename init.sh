#!/bin/zsh

## oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

/opt/homebrew/bin/brew install git

## aqua
brew install aquaproj/aqua/aqua
aqua install

## Anyenv
git clone https://github.com/anyenv/anyenv ~/.anyenv
echo 'eval "$(~/.anyenv/bin/anyenv init -)"' >> ~/.zshrc
eval "$(~/.anyenv/bin/anyenv init -)"
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.zshrc

~/.anyenv/bin/anyenv install --init
~/.anyenv/bin/anyenv install nodenv

## Yarn
# mkdir -p "$(~/.anyenv/envs/nodenv/bin/nodenv root)/plugins"
# git clone https://github.com/pine/nodenv-yarn-install.git "$(~/.anyenv/envs/nodenv/bin/nodenv root)/plugins/nodenv-yarn-install"

source ~/.zshrc