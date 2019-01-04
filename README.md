# .dotfiles Lite

Bit of a redo of my dotfiles. The bloat was becoming overwhelming. So here is Lite

## Quick Start
Run the following command, this will add an alias called dotfiles.

    alias dotfiles="bash <(curl -fsSL https://raw.githubusercontent.com/crydetaan/dotfilesLite/master/dotfiles)"


Now that you have the dotfiles alias added the following will be available.

    dotfiles --install all

No need to add the alias every time to run one of the dotfiles, the installation adds a persistent dotfiles alias.

## dotfile detail
So basically, my dotfile config includes;

    1. zsh with oh-my-zsh
        - Some Aliases
        - Some exports I want everytime the shell starts up
        - Some stuff I want to happen at startup

    2. vim

        - I have some plugins enabled using vundel
        - Plugins: Maybe to many, check the vimrc
        - Some General config,
        - Custom colour scheme
        - Oh, and I suck at spelling, so there is that (not enabled by default - use ',esc' and ',dsc').

    3. tmux
        - Just a rc with all the configs for tmux.

I will try and add more detail for each in, either; the individual rc, or the dotfiles.d config files.

## Other usage options
```
      _       _    __ _ _
   __| | ___ | |_ / _(_) | ___  ___
  / _` |/ _ \| __| |_| | |/ _ \/ __|
 | (_| | (_) | |_|  _| | |  __/\__ \
(_)__,_|\___/ \__|_| |_|_|\___||___/

    Usage: dotfiles [option] [configs]

    Examples:
        dotfiles --install all
        dotfiles --install vim
        dotfiles -i vim
        dotfiles -i zsh

    Options:
        -i, --install [configs]     Install configurations (See Valid Configs)

    Valid Configs:
        all zsh vim tmux
```
