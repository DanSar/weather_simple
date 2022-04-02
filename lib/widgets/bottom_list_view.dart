import 'package:flutter/material.dart';
import 'package:weather_simple/models/models.dart';
import 'package:weather_simple/widgets/forecast_card.dart';

class BottomListView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const BottomListView({required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          // '7-Day Weather Forecast'.toUpperCase(),
          '7-Day Weather Forecast',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          // color: Colors.red,
          height: 240,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 8),
            itemCount: snapshot.data!.list!.length,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width / 3.6,
              height: 160,
              color: Colors.lightBlue[300],
              child: forecastCard(snapshot, index),
            ),
          ),
        ),
      ],
    );
  }
}