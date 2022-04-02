import 'package:flutter/material.dart';
import 'package:weather_simple/models/models.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:weather_simple/utilities/forecast_util.dart';

class DetailView extends StatelessWidget {

  final AsyncSnapshot<WeatherForecast> snapshot;
  const DetailView({required this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;
    var pressure = forecastList![0].pressure * 0.750062;
    var humidity = forecastList[0].humidity;
    var wind = forecastList[0].speed;
    var sunrise = DateTime.fromMillisecondsSinceEpoch(forecastList[0].sunrise * 1000);
    var sunset = DateTime.fromMillisecondsSinceEpoch(forecastList[0].sunset * 1000);


    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          color: Colors.lightBlue[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(34.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Util.getItem(FontAwesomeIcons.cloudRain, humidity, '%'),
              Util.getItem(FontAwesomeIcons.thermometerThreeQuarters, pressure.round(), 'mm Hg'),
              Util.getItem(FontAwesomeIcons.wind, wind.toInt(), 'm/s'),
              // Column(
              //   children: [
              //     Text(
              //         '${Util.getFormattedTime(sunrise)}',
              //     ),
              //     Text(
              //       '${Util.getFormattedTime(sunset)}',
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}