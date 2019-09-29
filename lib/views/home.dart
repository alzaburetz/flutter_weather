import 'package:flutter/material.dart';
import 'package:test_flutter/main.dart';
import 'package:test_flutter/models/weathermodel.dart';
import 'package:test_flutter/bloc/getWeatherData.dart';
import 'package:test_flutter/views/Search.dart';


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
    this.data = await GetWeather(latitude: 1.0, longitude: 102.0).GetData();
    setState(() {
      _city = this.data.timezone;
      _temperature = this.data.currently.temperature;
      if (this.data.currently.summary == "Clear")
      {
        _icon = Icons.wb_sunny;
      }
      else if (this.data.currently.summary == "Overcast")
      {
        _icon = Icons.cloud;
      }

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
          )
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,


          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(40),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(_icon, size: 150),
                      Text('$_city')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '$_temperature',
                        style: TextStyle(
                          fontSize: 42,

                        ),
                      ),
                      Text(
                        'F°',
                        style: TextStyle(
                          fontSize: 100,
                          color: Colors.indigo,
                          shadows: <Shadow> [
                            new Shadow(
                                blurRadius: 3,
                                offset: Offset(0.2, 0.3)
                            )
                          ]
                        )
                      )
                    ],
                  )

                ],
              )
            )
          ],
        ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}