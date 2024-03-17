#!/bin/zsh

## oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

/opt/homebrew/bin/brew install \
    anyenv \
    awscli \
    docker \
    docker-buildx \
    docker-compose \
    git \
    gh \
    ghq \
    jq \
    peco

## Yarn
# mkdir -p "$(~/.anyenv/envs/nodenv/bin/nodenv root)/plugins"
# git clone https://github.com/pine/nodenv-yarn-install.git "$(~/.anyenv/envs/nodenv/bin/nodenv root)/plugins/nodenv-yarn-install"

source ~/.zshrc