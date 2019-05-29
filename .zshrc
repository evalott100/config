export ZSH=/home/eva/.oh-my-zsh
alias t='trash'
alias ls='ls --color=auto '
alias la='ls -al'
alias y='yaourt'
alias vim='nvim -p'
alias v='vim'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r='ranger'
alias cwm='nvim ~/.config/i3/config'

bindkey -v
autoload -Uz edit-command-line
bindkey -M vicmd 'v' edit-command-line

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

ZSH_THEME="gallois"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
#ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="false"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd/mm/yyyy"
plugins=(git tugboat man)

source $ZSH/oh-my-zsh.sh
export LANG=en_GB.UTF-8
export EDITOR='nvim'
export VISUAL='nvim'
export ARCHFLAGS="-arch x86_64"
export UPDATE_ZSH_DAYS=13
export NO_AT_BRIDGE=1
export PROMPT_COMMAND="pwd > /tmp/whereami"
export KEYTIMEOUT=1

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
