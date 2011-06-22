# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
unsetopt beep
#bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/antti/.zshrc'

PATH=$HOME/bin:$HOME/.cabal/bin:$PATH
export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8

autoload -Uz compinit
compinit
# End of lines added by compinstall

PROMPT="[%*] %n@%m:%~%% "

alias ls='ls --color=auto'

export GREP_OPTIONS='--color=auto'
export EDITOR='/usr/bin/vim'

export PRINTER="Brother_HL-1430_series"

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

bindkey "æ" forward-word
bindkey "â" backward-word
#bindkey "ä" delete-word

# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

bindkey '^k' kill-line

bindkey '^R' history-incremental-search-backward

# http://zsh.sourceforge.net/Guide/zshguide02.html#l16
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
# setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

alias xxx='killall mpg123'

PATH=$PATH:$HOME/kindgoms/bin
