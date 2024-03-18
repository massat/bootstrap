# bootstrap

Bootstrap my mac.

## synopsis

### dotfiles

```sh
$ ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs ~/iCloud\ Drive
$ ln -s ~/iCloud\ Drive/dotfiles/.gitconfig ~/.gitconfig
$ ln -s ~/iCloud\ Drive/dotfiles/aws ~/.aws
$ ln -s ~/iCloud\ Drive/dotfiles/rc.d ~/.rc.d
$ ln -s ~/iCloud\ Drive/dotfiles/ssh ~/.ssh
$ chmod 400 ~/.aws/*
$ chmod 400 ~/.ssh/id_rsa*
$ echo "source ~/.myzshrc" >> ~/.zshrc
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
