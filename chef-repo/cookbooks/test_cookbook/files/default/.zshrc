# WARNING! This file is under confman revision control. DO NOT MODIFY DIRECTLY!
# Managed under dotfiles module.
# $Id: .zshrc 19308 2013-07-17 23:10:38Z nherson $

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nherson/.zshrc'

autoload -Uz compinit
compinit

autoload -U compinit
compinit -d "${HOME}/.zcompdumps/$(hostname)"
autoload -U colors && colors
autoload -U promptinit && promptinit

setopt NOMATCH
setopt EXTENDED_GLOB
setopt BRACE_CCL
unsetopt BEEP
unsetopt NOTIFY
setopt AUTO_CD

zmodload zsh/complist

export TERM='rxvt'
export EDITOR='vim'
export VISUAL='vim'
export LANG='en_US.UTF-8'
export PATH="${HOME}/.rbenv/bin:${PATH}:/usr/local/sbin:/usr/sbin:/sbin"

PROMPT="[%{$fg_bold[white]%}%n%{$reset_color%}@"
PROMPT+="%{$fg_bold[cyan]%}%m%{$reset_color%}:"
PROMPT+="%{$fg[cyan]%}%1~%{$reset_color%}]"
PROMPT+="%(?..[%{$fg_bold[magenta]%}%?%{$reset_color%}]) %# "
RPROMPT="%{$fg[cyan]%}%d%{$reset_color%}"


alias svim="sudo vim -u /home/nherson/.vimrc $@"
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# For rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### include nachos executables path for CS162
export PATH="$PATH:/Users/nherson/Code/nachos/nachos/bin"
