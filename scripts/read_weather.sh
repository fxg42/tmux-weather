#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILE="$CURRENT_DIR/weather.out"
if [ ! -f "$FILE" ]; then
  ./get_weather.py > "$FILE"
  if [ ! -f "$FILE" ]; then
    echo ""
    exit
  fi
fi

icon_code=$(head -n 1 "$FILE")
temp=$(head -n 2 "$FILE" | tail -1)

case $icon_code in
  01d )
    echo "  ${temp}°"
    ;;
  01n )
    echo " ${temp}°"
    ;;
  02d )
    echo "   ${temp}°"
    ;;
  02n )
    echo "  ${temp}°"
    ;;
  03d | 03n | 04d | 04n )
    echo "  ${temp}°"
    ;;
  09d | 10d )
    echo "   ${temp}°"
    ;;
  09n | 10n )
    echo "  ${temp}°"
    ;;
  11d )
    echo "   ${temp}°"
    ;;
  11n )
    echo "  ${temp}°"
    ;;
  13d )
    echo "   ${temp}°"
    ;;
  13n )
    echo "  ${temp}°"
    ;;
  50d )
    echo "   ${temp}°"
    ;;
  50n )
    echo "   ${temp}°"
    ;;
  * )
    echo ""
    ;;
esac
