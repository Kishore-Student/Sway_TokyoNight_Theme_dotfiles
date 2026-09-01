#!/usr/bin/env bash

if pgrep -x wl-mirror >/dev/null; then
  pkill -x wl-mirror
else
  wl-mirror --fullscreen-output HDMI-A-1 eDP-1 &
fi
