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
alias ls="ls -G"
alias irb='irb --readline -r irb/completion'
alias lsa="ls -lah"
alias ll="ls -l"
alias vi="vim"
alias grep="grep -E --color=auto"
alias man="LANG=en_EN man"
alias gvim=mvim

### options
#
setopt NOBEEP
setopt HIST_IGNORE_DUPS

### keymap-stuff
#
bindkey -v
bindkey '\033b' backward-word
bindkey '\033f' forward-word
bindkey '\033u' history-beginning-search-backward
bindkey '\033d' history-beginning-search-forward

