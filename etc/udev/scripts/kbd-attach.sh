#!/bin/bash

USER="vindex10"
HOME=/home/$USER
XAUTHORITY=$HOME/.Xauthority
export XAUTHORITY HOME
DISPLAY=:0 ; export DISPLAY;

NOTIFY_NAME="keyboard_attach";
KBD_CMD="sleep 1; ~/.xinitrc layouts; /opt/bin/notify-send.py --replaces-process '$NOTIFY_NAME' -t 2000 -- attached \"$1\""
nohup /bin/su -p $USER -c "$KBD_CMD" 1>/dev/null 2>&1 &

unset DISPLAY
unset XAUTHORITY
unset HOME
