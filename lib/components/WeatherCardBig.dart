import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:test_flutter/models/current.dart';
import 'package:test_flutter/bloc/setWeatherIcon.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:test_flutter/components/DetailsForWeatherCard.dart';

class WeatherCard extends StatefulWidget {
  Current data;
  String title;
  WeatherCard({this.data, this.title});

  @override
  _WeatherCardState createState() => _WeatherCardState(data: this.data, title: this.title);

}

class _WeatherCardState extends State<WeatherCard> {
    Current data;
    String title;
    _WeatherCardState({this.data, this.title});

    @override
    Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child:
      Opacity(
        opacity: 0.5,
        child: Container(

          width: 250,
          height: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellowAccent, Colors.deepOrange],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('$title'),
                Container(
                  height: 150,
                  width: 160,
                  color: Colors.transparent,
                  child: Icon(
                    setIcon(summary: this.data.summary).SetIcon(),
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                Text(
                  data.temperature.toString() + '°',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 55,
                  ),
                ),
                Details(data: this.data)
              ],
            ),
          )
        )
      ),
    );
  }
}