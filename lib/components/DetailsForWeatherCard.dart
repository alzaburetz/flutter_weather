import 'package:flutter/material.dart';
import 'package:test_flutter/models/current.dart';
import 'package:weather_icons/weather_icons.dart';

class Details extends StatefulWidget {
  Current data;
  Details({this.data});

  @override
  _DetailsState createState() => _DetailsState(data: this.data);
}

class _DetailsState extends State<Details> {
  Current data;
  _DetailsState({this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                child: Icon(WeatherIcons.humidity, color: Colors.white),
              ),
              Text((data.humidity * 100).toString(), style: TextStyle(color: Colors.white))
            ],
          ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 30,
              child: Icon(WeatherIcons.barometer, color: Colors.white),
            ),
            Text((data.pressure).toString(), style: TextStyle(color: Colors.white))
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 30,
              child: Icon(WeatherIcons.windy, color: Colors.white),
            ),
            Text((data.windSpeed).toString(), style: TextStyle(color: Colors.white))
          ],
        )
      ],
    );
  }
}