#!/usr/bin/env bash

calendar() {

  CALENDER_REV=$(eww get calendar_rev)
  if [ "$CALENDER_REV" = "true" ]; then 
    eww open calendar
    eww update calendar_rev=false
  else
    eww close calendar
    eww update calendar_rev=true
  fi
}

volume() {
  AUDIO_REV=$(eww get audioctl_reveal)
  if [ "$AUDIO_REV" = "true" ]; then 
    eww open audio_ctl
    eww update audioctl_reveal=false
  else
    eww close audio_ctl
    eww update audioctl_reveal=true
  fi
}

if [ "$1" = "calendar" ]; then
calendar
elif [ "$1" = "volume" ]; then
volume
fi

