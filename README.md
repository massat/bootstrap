bootstrap
=========

Bootstrap my mac.

synopsis
--------

### install the command line developer tools

```sh
$ xcode-select --install
```

### install homebrew

```sh
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

### install ansible with homebrew

```sh
$ brew install ansible
```

### clone repositry

```sh
$ git clone git@github.com:massat/bootstrap.git
$ cd bootstrap
```

### setup with ansible

```sh
$ ansible-playbook -i inventory -K playbook.yml
```
