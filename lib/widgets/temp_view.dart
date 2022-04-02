import 'package:flutter/material.dart';
import 'package:weather_simple/models/models.dart';

class TempView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;

  const TempView({required this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;
    var icon = forecastList?[0].getIconUrl();
    var temp = forecastList?[0].temp.day.toStringAsFixed(0);
    var description = forecastList?[0].weather[0].description.toUpperCase();
    var sizeTemp = MediaQuery.of(context).size.height/6.5;
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$temp',
                style: TextStyle(
                  fontSize: sizeTemp,
                  color: Colors.white,
                ),
              ),
              Container(
                height: sizeTemp,
                // color: Colors.red,
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '°C',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Image.network(icon!, scale: 1, color: Colors.white),
          SizedBox(height: 8.0),
          Text(
            '$description',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          // Image.network(icon!, scale: 1.2),
          SizedBox(height: 38.0),
          // Text(
          //   '$temp °C',
          //   style: TextStyle(
          //     fontSize: 54.0,
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
    );
  }
}
