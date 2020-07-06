bootstrap
=========

Bootstrap my mac.

synopsis
--------

### install Dropbox

https://www.dropbox.com

```sh
$ ln -s ~/Dropbox/dotfiles/ssh ~/.ssh
$ chmod 400 ~/.ssh/id_rsa*
```

### install the command line developer tools

```sh
$ xcode-select --install
```

### clone repositry

```sh
$ git clone https://github.com/massat/bootstrap.git
$ cd bootstrap
```

### initialize

```sh
./init.sh
```

### setup with ansible

```sh
$ ~/.pyenv/shims/ansible-playbook -i inventory -K playbook.yml
```
