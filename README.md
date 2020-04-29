.vim
====

My vim dot files. the `.vimrc` file is saved to [vimrc](https://github.com/denhamparry/.vim/blob/master/vimrc).

**Table of Contents**

<!-- toc -->

- [About](#about)
  * [Installing](#installing)
- [Makefile](#makefile)

<!-- tocstop -->

## About

### Installing

Just run the following commands via terminal to get perfectly set up:

```console
$ cd ~/
$ git clone --recursive https://github.com/denhamparry/.vim.git .vim
$ ln -sf $HOME/.vim/vimrc $HOME/.vimrc
$ cd $HOME/.vim
$ git submodule update --init
```

## Makefile

You can use the [`Makefile`](Makefile) to run a series of commands.

```console
$ make help
install                        Sets up symlink for user and root .vimrc for vim and neovim.
			       Install Vundle
update-vundle		       Clean and install plugins

```
