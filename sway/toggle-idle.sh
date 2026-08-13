#!/usr/bin/env bash

PID=$(pgrep -x swayidle)

if [ -z "$PID" ]; then
  notify-send "Idle Lock" "swayidle is not running"
  exit 1
fi

STATE=$(ps -o stat= -p "$PID")

if [[ "$STATE" == T* ]]; then
  kill -CONT "$PID"
  notify-send "Idle Lock" "Enabled"
else
  kill -STOP "$PID"
  notify-send "Idle Lock" "Disabled"
fi
