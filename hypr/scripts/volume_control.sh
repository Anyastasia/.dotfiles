#!/bin/bash

increase_volume () {
  wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+ && notify 
}

decrease_volume () {
  wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && notify
}

toggle_mute () {
  wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && notify
}

get_volume () {
  muted=$(check_mute)
  if [ $muted -eq 1 ]; then
    echo "Muted"
  else
    VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
    x=$(echo ${VOLUME:8})
    rounded=$(echo $x*100 | bc)
    echo ${rounded%.*}
  fi
}

check_mute() {
  CURR_VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
  if echo "$CURR_VOLUME" | grep -q "MUTED" ; then
    echo 1
  else
    echo 0
  fi
}

notify () {
  if [ $(get_volume) == "Muted" ]; then
    notify-send -i muted "Volume: $(get_volume)" -h string:synchronous:volume-change
  elif [ $(get_volume) -le 0 ]; then
    notify-send -i no_sound "Volume: $(get_volume)" -h int:value:$(get_volume) -h string:synchronous:volume-change
  elif [ $(get_volume) -le 40 ]; then
    notify-send -i volume_down "Volume: $(get_volume)" -h int:value:$(get_volume) -h string:synchronous:volume-change
  else
    notify-send -i volume_up "Volume: $(get_volume)" -h int:value:$(get_volume) -h string:synchronous:volume-change
  fi
}

if [ "$1" = "--increase" ]; then
  increase_volume
elif [ "$1" = "--decrease" ]; then
  decrease_volume
elif [ "$1" == "--toggle-mute" ]; then
  toggle_mute
elif [ "$1" == "--get-volume" ]; then
  get_volume
else
  echo "Invalid argument"
fi
