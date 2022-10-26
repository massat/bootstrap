#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

/opt/homebrew/bin/brew install git

git clone https://github.com/anyenv/anyenv ~/.anyenv
echo 'eval "$(~/.anyenv/bin/anyenv init -)"' >> ~/.zshrc
eval "$(~/.anyenv/bin/anyenv init -)"
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.zshrc

~/.anyenv/bin/anyenv install --init
~/.anyenv/bin/anyenv install nodenv
~/.anyenv/bin/anyenv install pyenv
~/.anyenv/envs/pyenv/bin/pyenv install 3.9.2
~/.anyenv/envs/pyenv/versions/3.9.2/bin/pip install --upgrade pip
~/.anyenv/envs/pyenv/versions/3.9.2/bin/pip install ansible
~/.anyenv/envs/pyenv/versions/3.9.2/bin/ansible-playbook -i localhost -c local -K playbook.yml

# Yarn
mkdir -p "$(~/.anyenv/envs/nodenv/bin/nodenv root)/plugins"
git clone https://github.com/pine/nodenv-yarn-install.git "$(~/.anyenv/envs/nodenv/bin/nodenv root)/plugins/nodenv-yarn-install"
