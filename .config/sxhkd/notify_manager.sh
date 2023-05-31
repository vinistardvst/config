#!/bin/bash

dunstctl close-all

path1=$HOME/.local/share/icons/Reversal-grey-dark/actions/24
while getopts 'abcdefghijklmnopqrstuvwxyz' OPTION; do
  case "$OPTION" in
    d)
      notify-send "Hoje é $(date +'%d de %B de %Y')" -i $path1/view-calendar.svg
      ;;
    t)
      notify-send "$(date +'São %H hora(s) e %M minuto(s)')" -i $path1/clock.svg
      ;;
    w)
      notify-send "Você está em $(bspc query -D -d focused --names)"
      ;;
  esac
done
shift "$(($OPTIND -1))"


