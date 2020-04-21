# Main file for setting some exports and sourcing some other files.

# Some OS specific sourcing.
# My OS of choice is MacOS or CentOS(Should work for most distros probably),

# The following is required for the python virtualenvwrapper depending on the OS.
case "$OSTYPE" in
    # MacOS
    darwin*)

        # Brew installs a python2 executable to /usr/local/bin.
        # To have brew's python executable in PATH we need the following.
        export PATH="/usr/local/opt/python/libexec/bin:$PATH"
        export PATH="/usr/local/sbin:$PATH"
        
        # The correct virtualwrapper.sh depending on the OS
        which virtualenv > /dev/null 2>&1 && source /usr/local/bin/virtualenvwrapper.sh && export WORKON_HOME=$HOME/.virtualenvs && export PROJECT_HOME=$HOME/Devel

        # Adding Composer to $PATH if running on system
        which composer > /dev/null 2>&1 && export PATH="$HOME/.composer/vendor/bin:$PATH"

        if [ -d "$HOME/.nvm" ]; then
            export NVM_DIR="$HOME/.nvm"
            [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
            [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
        fi

        if [ -f "${HOME}/.iterm2_shell_integration.zsh" ]; then
            source "${HOME}/.iterm2_shell_integration.zsh"

            iterm2_print_user_vars() {
                iterm2_set_user_var ifconfig $(ifconfig en0 | grep "inet "| cut -d ' ' -f2)
                iterm2_set_user_var gateway $(route get default | grep gateway | awk '{print $2}')
            }
        fi

        if [ -f /usr/local/etc/profile.d/autojump.sh ]; then
            source /usr/local/etc/profile.d/autojump.sh
        fi

        export BAT_THEME="Solarized (dark)"

        # fzf and all that comes with it

        if [ -f "$HOME"/.fzf.zsh ]; then
            export FZF_DEFAULT_OPTS="
            --layout=reverse
            --info=inline
            --height=80%
            --multi
            --preview-window=:hidden
            --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (exa --tree --level=4 --long  {} | less)) || echo {} 2> /dev/null | head -200'
            --color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:000'
            --prompt='∼ ' --pointer='>' --marker='+'
            --bind '?:toggle-preview'
            --bind 'ctrl-a:select-all'
            --bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
            --bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
            "
            # fzf's command
            export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules' --exclude 'Library' --exclude '.config'"
            # CTRL-T's command
            export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
            # ALT-C's command
            export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"
            bindkey "ç" fzf-cd-widget
        fi  && source ~/.fzf.zsh
        
        ;;

    # CentOS
    linux*) 
        
        # Setting some python requirements
        # The correct virtualwrapper.sh depending on the OS
        which python3.6 > /dev/null 2>&1 && export VIRTUALENVWRAPPER_PYTHON="$(command \which python3.6)"
        which virtualenv > /dev/null 2>&1 && source /usr/bin/virtualenvwrapper.sh && export WORKON_HOME=$HOME/.virtualenvs && export PROJECT_HOME=$HOME/Devel

        # Adding Composer to $PATH if running on system
        which composer > /dev/null 2>&1 && export PATH="$HOME/.config/composer/vendor/bin:$PATH"
        
        ;;
esac
