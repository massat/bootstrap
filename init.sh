#!/bin/zsh

## oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

/opt/homebrew/bin/brew install \
    anyenv \
    awscli \
    cask \
    docker \
    docker-buildx \
    docker-compose \
    git \
    gh \
    ghq \
    jq \
    peco \
    pt \
    pwgen

/opt/homebrew/bin/brew install \
    --cask \
    dash \
    google-chrome \
    hyper \
    itsycal \
    session-manager-plugin \
    slack \
    trailer \
    visual-studio-code \
    zoom

## nodeenv
anyenv install nodenv

## Yarn
mkdir -p "$(~/.anyenv/envs/nodenv/bin/nodenv root)/plugins"
git clone https://github.com/pine/nodenv-yarn-install.git "$(~/.anyenv/envs/nodenv/bin/nodenv root)/plugins/nodenv-yarn-install"

source ~/.zshrc
