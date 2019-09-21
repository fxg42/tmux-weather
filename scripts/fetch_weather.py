#!/usr/bin/env python3

import json
import requests

def getLatLon(key):
    resp = requests.get('https://api.ipdata.co/', params={ 'api-key': key })
    payload = resp.json()
    return payload['latitude'], payload['longitude']

def getWeather(lat, lon, key):
    resp = requests.get('http://api.openweathermap.org/data/2.5/weather', params={ 'lat': lat, 'lon': lon, 'appid': key})
    payload = resp.json()
    return payload['weather'][0]['icon'], int(payload['main']['temp'] - 273.15)

try:
    with open('apikeys.json') as f:
        keys = json.load(f)
        lat, lon = getLatLon(keys['ipdata'])
        weatherIconCode, temperature = getWeather(lat, lon, keys['openweathermap'])
        print(weatherIconCode)
        print(temperature)
except:
    print('')
