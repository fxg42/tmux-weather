#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILE="$CURRENT_DIR/weather.out"
if [ ! -f "$FILE" ]; then
  ./fetch_weather.py > "$FILE"
  if [ ! -f "$FILE" ]; then
    echo " "
  fi
fi

icon_code=$(head -n 1 "$FILE")

case $icon_code in
  01d )
    echo " "
    ;;
  01n )
    echo " "
    ;;
  02d )
    echo " "
    ;;
  02n )
    echo " "
    ;;
  03d | 03n | 04d | 04n )
    echo " "
    ;;
  09d | 10d )
    echo " "
    ;;
  09n | 10n )
    echo " "
    ;;
  11d )
    echo " "
    ;;
  11n )
    echo " "
    ;;
  13d )
    echo " "
    ;;
  13n )
    echo " "
    ;;
  50d )
    echo " "
    ;;
  50n )
    echo " "
    ;;
  * )
    echo "  "
    ;;
esac
