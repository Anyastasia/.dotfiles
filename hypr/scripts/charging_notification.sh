#!/bin/bash

if [ $1 -eq 1 ]; then
  notify-send -i info "Charging"
else
  notify-send -i info "AC unplugged"
fi

