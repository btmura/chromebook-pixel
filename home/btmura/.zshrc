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

[[ "$ORIGPATH" == "" ]] && ORIGPATH=$PATH
PATH=~/bin:~/work/android-sdk-linux/platform-tools:~/work/android-sdk-linux/tools:~/opt/eclipse:/usr/lib64/java/bin:$ORIGPATH

tm() {
  if [[ "$1" = "" ]]; then
    tmux ls;
  else
    tmux attach -d -t $1 || tmux -2 new -s $1;
  fi
}

