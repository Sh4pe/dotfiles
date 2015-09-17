### exports
#
export PROMPT=$'%B%{%}%F{green}%n@%m%f:%F{blue}%~%f\n%# %{%}%b'
export HISTSIZE=20000
export SAVEHIST=20000
export HISTFILE=~/.zsh/zsh_history
export LSCOLORS="Exfxcxdxbxegedabagacad"
export PATH=$PATH:/Users/david/local/bin:/Users/dnies/local/bin:/opt/local/bin
export EDITOR="/usr/bin/vim"

### aliases
#
alias irb='irb --readline -r irb/completion'
alias vi="vim"
alias grep="grep -E --color=auto"
alias man="LANG=en_EN man"
alias gvim=mvim

if [[ `uname` == "Darwin" ]]; then
    # this seems to be OSX
    alias ls="ls -G"
else
    # this seems to be linux
    alias ls="ls --color"
fi

alias lsa="ls -lah"
alias ll="ls -l"

### options
#
setopt NOBEEP
setopt HIST_IGNORE_DUPS
setopt histignorespace

### vim stuff
#
bindkey -v
export KEYTIMEOUT=1

### keymap-stuff
#
bindkey '\033b' backward-word
bindkey '\033f' forward-word
bindkey '\033u' history-beginning-search-backward
bindkey '\033d' history-beginning-search-forward
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
