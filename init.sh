#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
/usr/local/bin/brew install anyenv openssl

eval "$(/usr/local/bin/anyenv init -)"

/usr/local/bin/anyenv install --init
/usr/local/bin/anyenv install pyenv
~/.anyenv/envs/pyenv/bin/pyenv install 3.9.2
~/.anyenv/envs/pyenv/versions/3.9.2/bin/pip install --upgrade pip
~/.anyenv/envs/pyenv/versions/3.9.2/bin/pip install ansible
~/.anyenv/envs/pyenv/versions/3.9.2/bin/ansible-playbook -i localhost -c local -K playbook.yml

echo 'eval "$(anyenv init -)"' >> ~/.zshrc