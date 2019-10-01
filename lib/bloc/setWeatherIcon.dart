import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:test_flutter/models/current.dart';

class setIcon {
  String summary;
  setIcon({this.summary});

  IconData SetIcon() {
    print (this.summary);

    if (this.summary == "Clear")
    {
      return WeatherIcons.day_sunny;
    }
    else if (this.summary == "Overcast")
    {
      return WeatherIcons.cloud_down;
    }
    else if (this.summary == "Humid and Overcast")
    {
      return WeatherIcons.rain;
    }

  }
}