import 'package:flutter/material.dart';
import 'package:test_flutter/main.dart';
import 'package:test_flutter/models/weathermodel.dart';
import 'package:test_flutter/bloc/getWeatherData.dart';
import 'package:test_flutter/views/Search.dart';
import 'package:weather_icons/weather_icons.dart';

import 'package:test_flutter/components/WeatherCardBig.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _temperature = 0.0;
  IconData _icon = Icons.bubble_chart;
  WeatherData data = null;
  String _city = 'City';

  void GetWeatherData() async {
    this.data = await GetWeather(latitude: 50.0, longitude: 102.0).GetData();
    setState(() {
      _city = this.data.timezone;
      _temperature = this.data.currently.temperature;
      print(this.data.currently.summary);

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: Theme.of(context).textTheme.title),
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          FlatButton(
            child: Icon(
                Icons.search
            ),
            onPressed: () {
              Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => Search())
              );
            },
          ),
          FlatButton(
            child: Icon(
              Icons.arrow_downward
            ),
            onPressed: GetWeatherData,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              WeatherCard(data: this.data.currently,title: this.data.timezone)
            ],
          )
        ],
      )
    );
  }
}