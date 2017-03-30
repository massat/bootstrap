bootstrap
=========

Bootstrap my mac.

synopsis
--------

### install the command line developer tools

```sh
$ xcode-select --install
```

### clone repositry

```sh
$ git clone git@github.com:massat/bootstrap.git
$ cd bootstrap
```

### initialize

```sh
./init.sh
```

### setup with ansible

```sh
$ ansible-playbook -i inventory -K playbook.yml
```
