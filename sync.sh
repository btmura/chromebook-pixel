#!/bin/bash

sync() {
  local src=$1
  local dst=$(dirname $0)/$src
  if [ -f "$src" ]; then
    echo syncing $src to $dst && mkdir -p $(dirname $dst) && cp $src $dst
  else
    echo missing $src
  fi
}

sync $HOME/bin/battery
sync $HOME/.Xresources
sync $HOME/.gitconfig
sync $HOME/.tmux.conf
sync $HOME/.vimrc
sync $HOME/.xinitrc
sync $HOME/.zshrc
sync $HOME/work/dwm-6.0/config.h
sync /etc/acpi/acpi_handler.sh
sync /etc/dhcpcd.conf
sync /etc/lilo.conf
sync /etc/modprobe.d/ath9k.conf
sync /etc/pm/config.d/config
sync /etc/pm/sleep.d/00-backlight
sync /etc/rc.d/rc.keymap
sync /etc/rc.d/rc.local
sync /etc/slackpkg/blacklist
sync /etc/termcap
sync /etc/udev/rules.d/51-android.rules
sync /etc/X11/xorg.conf.d/10-keyboard.conf
sync /etc/X11/xorg.conf.d/50-synaptics.conf
