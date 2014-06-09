bootstrap
=========

Bootstrap my mac.

synopsis
--------

### install homebrew

```sh
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

### clone repo.

```sh
$ clone git@github.com:massat/bootstrap.git
$ cd bootstrap
```

### install packages with homebrew

```sh
$ brew bundle
```

### setup with ansible

```sh
$ ansible-playbook -i inventory -K playbook.yml 
```
