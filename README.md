# tmux-weather

Adds current weather and temperature to tmux.

![screenshot](https://github.com/fxg42/tmux-weather/blob/master/screenshot.png)

## Features

- `#{weather}` placeholder for the status line. Displays an icon representing
  the current weather at the current location, based on the IP address.

## Dependencies

- python3
- [A terminal font based on Nerd Fonts](https://www.nerdfonts.com/)
- [An OpenWeatherMap API key](https://openweathermap.org)
- [An ipdata.co API key](https://api.ipdata.co)

## Installation

Clone the repo:

    $ git clone https://github.com/fxg42/tmux-weather ~/clone/path

Create file `~/clone/path/scripts/apikeys.json` by copying the [given sample file](https://github.com/fxg42/tmux-weather/blob/master/samples/apikeys.json)
and copy-pasting in your API keys.

Modify the given [plist sample file](https://github.com/fxg42/tmux-weather/blob/master/samples/com.github.fxg42.tmux-weather.plist)
by copy-pasting in the absolute path to the python3 executable
and copy it to `~/Library/LaunchAgents/com.github.fxg42.tmux-weather.plist`.

Load the plist:

    $ launchctl load ~/Library/LaunchAgents/com.github.fxg42.tmux-weather.plist

Finally, add this line to `.tmux.conf` and source it.

    run-shell ~/clone/path/weather.tmux

## License

[MIT](https://github.com/fxg42/tmux-weather/blob/master/LICENSE)
