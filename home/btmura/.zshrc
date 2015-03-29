HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000

setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt inc_append_history
setopt share_history

alias gaa='git add -A'
alias gai='git add -i'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log'
alias gs='git status'

alias e='exit'
alias ll='ls -lh'
alias z='source ~/.zshrc'
alias ze='vim ~/.zshrc'

[[ "$ORIGPATH" == "" ]] && ORIGPATH=$PATH
PATH=\
~/.cabal/bin:\
~/opt/android-sdk/platform-tools:\
~/opt/android-sdk/tools:\
~/opt/bin:\
~/opt/dart/dart-sdk/bin:\
~/opt/go_appengine:\
~/opt/haskell-platform/bin:\
/usr/lib64/java/bin:\
$ORIGPATH

tm() {
  if [[ "$1" = "" ]]; then
    tmux ls;
  else
    tmux attach -d -t $1 || tmux -2 new -s $1;
  fi
}

