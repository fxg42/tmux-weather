# tmux-weather

Adds current weather and temperature to tmux.

![screenshot](https://github.com/fxg42/tmux-weather/blob/master/screenshot.png)

## Features

- `#{weather}` placeholder for the status line. Displays an icon representing
  the current weather at the current location, based on the IP address.

## Dependencies

- python3
- crontab
- [A terminal font based on Nerd Fonts](https://www.nerdfonts.com/)
- [An OpenWeatherMap API key](https://openweathermap.org)
- [An ipdata.co API key](https://api.ipdata.co)

## Installation

Clone the repo:

    $ git clone https://github.com/fxg42/tmux-weather ~/clone/path

Create file `~/clone/path/scripts/apikeys.json` by renaming the given sample file
and copy-pasting in your API keys.

Create a crontab that fetches the weather every few minutes:

    $ crontab -e

    */5 * * * *  cd ~/clone/path/scripts && /path/to/python3 fetch_weather.py > weather.out 2>&1

Add this line to .tmux.conf:

    run-shell ~/clone/path/weather.tmux

## License

[MIT](https://github.com/fxg42/tmux-weather/blob/master/LICENSE)
