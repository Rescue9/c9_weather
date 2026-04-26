import 'package:flutter/material.dart';
import 'package:c9_weather/data/weather_data.dart';

class Coordinates {

  WeatherData wd = WeatherData();

  void _saveLat(String input) {
    var lat = double.tryParse(input);
    print(lat);
  }

  void _saveLon(String input) {
    var lon = double.tryParse(input);
    print(lon);
  }

  Widget coordinateInputs(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
              margin: EdgeInsets.all(5),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter latitude'),
                  keyboardType: TextInputType.number,
                  onChanged: _saveLat,
                  onSubmitted: _saveLat)),
        ),
        Expanded(
            child: Container(
                margin: EdgeInsets.all(5),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter longitude'),
                    keyboardType: TextInputType.number,
                    onChanged: _saveLon,
                    onSubmitted: _saveLon)))
      ],
    );
  }

  Widget buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: TextButton(
            onPressed: wd.queryWeather,
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue)),
            child: Text(
              'Fetch weather',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: TextButton(
            onPressed: wd.queryForecast,
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue)),
            child: Text(
              'Fetch forecast',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}