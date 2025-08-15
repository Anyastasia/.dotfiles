#!/bin/sh

lock="󰌾 Lock"
shutdown="󰐥 Shutdown"
restart="󰜉 Restart"

cmd() {
  rofi -dmenu -l 3\
  -theme-str 'inputbar { enabled: false; }'\
  -theme-str 'window { width: 200px; }'\
  -mesg 'Power Menu'
}

choice=$(echo -e "$lock\n$restart\n$shutdown" | cmd )

case "$choice" in
  $lock) hyprlock ;;
  $restart) reboot ;;
  $shutdown) poweroff ;;
  *) exit 1 ;;
esac
