[[ "$ORIGPATH" == "" ]] && ORIGPATH=$PATH
PATH=~/bin:~/work/android-sdk-linux/platform-tools:~/work/android-sdk-linux/tools:~/opt/eclipse:/usr/lib64/java/bin:$ORIGPATH

tm() {
  if [[ "$1" = "" ]]; then
    tmux ls;
  else
    tmux attach -d -t $1 || tmux -2 new -s $1;
  fi
}

