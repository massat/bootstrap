#!/bin/zsh

## oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

/opt/homebrew/bin/brew install \
    anyenv \
    aquaproj/aqua/aqua \
    awscli \
    cask \
    docker-credential-helper-ecr \
    fujiwara/tap/ecsta \
    git \
    gh \
    ghq \
    jq \
    peco \
    pt \
    pwgen \
    tig

/opt/homebrew/bin/brew install \
    --cask \
    dash \
    docker \
    figma \
    ghostty \
    google-chrome \
    itsycal \
    session-manager-plugin \
    slack \
    trailer \
    visual-studio-code \
    zoom

## git
git config --global credential.helper osxkeychain
git config --global ghq.root ~/src

## nodeenv
anyenv install nodenv

source ~/.zshrc
