bootstrap
=========

Bootstrap my mac.

synopsis
--------

### install homebrew

```sh
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

### install ansible with homebrew

```sh
$ brew install ansible
```

### setup with ansible

```sh
$ ansible-playbook -i inventory -K playbook.yml
```
