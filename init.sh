#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/massat/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

/usr/local/bin/brew install git openssl

git clone https://github.com/anyenv/anyenv ~/.anyenv

eval "$(~/.anyenv/bin/anyenv init -)"

~/.anyenv/bin/anyenv install --init
~/.anyenv/bin/anyenv install pyenv
~/.anyenv/bin/anyenv install nodenv
~/.anyenv/envs/pyenv/bin/pyenv install 3.9.2
~/.anyenv/envs/pyenv/versions/3.9.2/bin/pip install --upgrade pip
~/.anyenv/envs/pyenv/versions/3.9.2/bin/pip install ansible
~/.anyenv/envs/pyenv/versions/3.9.2/bin/ansible-playbook -i localhost -c local -K playbook.yml

echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(anyenv init -)"' >> ~/.zshrc
