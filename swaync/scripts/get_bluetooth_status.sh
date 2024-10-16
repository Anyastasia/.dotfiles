#!/bin/bash

 
#busctl get-property org.bluez /org/bluez/hci0 org.bluez.Adapter1 Powered

status="$(busctl get-property org.bluez /org/bluez/hci0 org.bluez.Adapter1 Powered)"

[[ $status = "b true" ]] && echo true || echo false


