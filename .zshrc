HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

export GOPATH=~/go
export PYTHONDONTWRITEBYTECODE=1
export VISUAL=vim
export EDITOR=vim

bindkey -e

export KEYTIMEOUT=1
bindkey -v

alias ls='ls --color=auto'
alias ll='ls -lah'

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/$USER/.zshrc'

autoload -Uz compinit promptinit

# history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey '^[OA' history-beginning-search-backward
bindkey '^[OB' history-beginning-search-forward

# git
autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats '[%b]'

plugins=(git virtualenv)

set_virtual_env() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        echo " %F{cyan}(${VIRTUAL_ENV:t})%f"
    else
        echo ""
    fi
}

PROMPT="%F{red}%n %F{blue}%3~%f$(set_virtual_env)"

precmd() {
    vcs_info
    PROMPT="%F{red}%n %F{blue}%3~%f$(set_virtual_env)"
    if [[ -n ${vcs_info_msg_0_} ]]; then
        # vcs_info found something (the documentation got that backwards
        # STATUS line taken from https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/git.zsh
        STATUS=$(command git status --porcelain 2> /dev/null | tail -n1)
        if [[ -n $STATUS ]]; then
            PROMPT="$PROMPT %F{red}${vcs_info_msg_0_} %f%# "
        else
            PROMPT="$PROMPT %F{green}${vcs_info_msg_0_} %f%# "
        fi
    else
        PROMPT="$PROMPT %f%# "
    fi
}

setopt PROMPT_SUBST

export PATH="$PATH:/home/$USER/.local/bin"
export PATH="$PATH:/usr/local/go/bin"
compinit
# End of lines added by compinstall

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"
