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

# run() {
#     ${EWW_BIN} -c $HOME/.config/eww/bar open calendar
# }

# # Open widgets
# if [[ ! -f "$LOCK_FILE" ]]; then
#     ${EWW_BIN} -c $HOME/.config/eww/bar close system music_win audio_ctl
#     touch "$LOCK_FILE"
#     run && echo "ok good!"
# else
#     ${EWW_BIN} -c $HOME/.config/eww/bar close calendar
#     rm "$LOCK_FILE" && echo "closed"
# fi
# }


if [ "$1" = "calendar" ]; then
calendar
fi

