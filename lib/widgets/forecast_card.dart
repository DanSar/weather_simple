import 'package:flutter/material.dart';
import 'package:weather_simple/utilities/forecast_util.dart';

Widget forecastCard(AsyncSnapshot snapshot, int index) {
  var forecastList = snapshot.data.list;
  var dayOfWeek = '';
  DateTime date =
  DateTime.fromMillisecondsSinceEpoch(forecastList[index].dt * 1000);
  var fullDate = Util.getFormattedDate(date);
  dayOfWeek = fullDate.split(',')[0]; // Tue
  var tempMin = forecastList[index].temp.min.toStringAsFixed(0);
  var tempMax = forecastList[index].temp.max.toStringAsFixed(0);
  var icon = forecastList[index].getIconUrl();
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            dayOfWeek,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  '$tempMax °C',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Image.network(icon, scale: 1.2),
              // Image.network(icon, scale: 1.2, color: Colors.white),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  '$tempMin °C',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
