.vim
====

My vim dot files. the `.vimrc` file is saved to [vimrc](https://github.com/denhamparry/.vim/blob/master/vimrc).

**Table of Contents**

<!-- toc -->

- [About](#about)
  * [Installing](#installing)
- [Makefile](#makefile)
- [Notes](#notes)
- [References](#references)

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

## Notes

### Open

- `vi README.md`
- `vi README.md -i NONE`
  - Open with no settings
- `vi README.md -O *`
  - Open and split into 2 windows

### Modal Editor

| Mode              | Triggers       |
| ----------------- |:--------------:|
| Normal Mode       | Esc            |
| Insert Mode       | i, a, c        |
| Visual Mode       | v, V, <Ctrl-v> |
| Command-Line Mode | :, /           |

### Commands

`[count] [operator] [text object / motion]`

#### Operators

`:h operators`

| Trigger           | Action                     |
| ----------------- |:--------------------------:|
| c                 | change                     |
| d                 | drop (delete)              |
| y                 | yank (copy)                |
| p                 | paste (after cursor)       |
| P                 | paste (before cursor)      |
| ~                 | swap case                  |
| gu                | go lowercase               |
| gU                | go uppercase               |
| !                 | filter to external program |
| <                 | shift left                 |
| >                 | shift right                |
| =                 | indent                     |

#### Text Objects

`:h text-object`

| Trigger           | Action          |
| ----------------- |:---------------:|
| aw                | a word          |
| iw                | inner word      |
| aW                | a WORD          |
| iW                | inner WORD      |
| ap                | a paragraph     |
| ip                | inner paragraph |
| ab                | a bracket       |
| ai                | inner bracket   |
| at                | a tag block     |
| it                | inner tag block |

#### Motions

`:h motions`

| Trigger           | Action                               |
| ----------------- |:------------------------------------:|
| %                 | go to first matching paren / bracket |
| [count] +         | down to first non-blank char of line |
| [count] $         | to end of line                       |
| [count] f/F{char} | to next occurence of {char}          |
| [count] t/T{char} | to before next occurence of {char}   |
| [count] h/j/k/l   | left, down, up, or right             |
| [count] ]m        | go to beginning of next method       |
| [count] w/W       | go a word / WORD to the right        |
| [count] b/B       | go a word / WORD to the left         |
| [count] e/E       | go to end of word / WORD right       |

#### Examples

`6+`
| Example           | Action                                 |
| ----------------- |:--------------------------------------:|
| `6+`              | Go down 6 lines to line start          |
| `3-`              | Go up 6 lines to line start            |
| `gUaW`            | Uppercase a WORD                       |
| `3ce`             | 3 changes to word end                  |
| `4$`              | Go down 4 lines to end of line         |
| `d]m`             | Delete to start of next method         |
| `%`               | Jump to match of next paren or bracket |

## References

- [Talk on going mouseless with Vim, Tmux, and Hotkeys](https://youtu.be/E-ZbrtoSuzw)
