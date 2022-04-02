import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_simple/api/weather_api.dart';
import 'package:weather_simple/models/models.dart';
import 'package:weather_simple/screens/city_screen.dart';
import 'package:weather_simple/widgets/bottom_list_view.dart';
import 'package:weather_simple/widgets/city_view.dart';
import 'package:weather_simple/widgets/detail_view.dart';
import 'package:weather_simple/widgets/temp_view.dart';
import 'package:flutter/material.dart';

class WeatherForecastScreen extends StatefulWidget {
  final locationWeather;
  WeatherForecastScreen({this.locationWeather});

  @override
  _WeatherForecastScreenState createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  Future<WeatherForecast>? forecastObject;
  // late Future<WeatherForecast> forecastObject;
  // late String _cityName;
  late String _cityName = 'London';


  @override
  void initState() {
    super.initState();

    if (widget.locationWeather != null) {
      forecastObject = Future.value(widget.locationWeather);
    }

    // forecastObject.then((weather) {
    //   print(weather.list[0].weather[0].main);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[400],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text('Weather simple'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.locationArrow),
          onPressed: () {
            setState(() {
              forecastObject = WeatherApi().fetchWeatherForecast();
            });
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            onPressed: () async {
              var tappedName = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return CityScreen();
                  }));
              if (tappedName != null) {
                setState(() {
                  _cityName = tappedName;
                  forecastObject = WeatherApi()
                      .fetchWeatherForecast(city: _cityName, isCity: true);
                });
              }
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: FutureBuilder<WeatherForecast>(
              future: forecastObject,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: <Widget>[
                      SizedBox(height: 50.0),
                      CityView(snapshot: snapshot),
                      SizedBox(height: 50.0),
                      TempView(snapshot: snapshot),
                      SizedBox(height: 50.0),
                      BottomListView(snapshot: snapshot),
                      SizedBox(height: 20.0),
                      DetailView(snapshot: snapshot),
                    ],
                  );
                } else {
                  return Center(
                    child: Text(
                      'City not found\nPlease, enter correct city',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}