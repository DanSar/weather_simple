import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Util {
  static String getFormattedDate(DateTime dateTime) {
    // return DateFormat('EEE, MMM d, y').format(dateTime);
    return DateFormat('MMM d, y').format(dateTime);
  }

  static String getFormattedTime(DateTime timeHm) {
    return DateFormat('H:m').format(timeHm); //19:34
  }


  static getItem(IconData iconData, int value, String units) {
    return Column(
      children: <Widget>[
        Icon(iconData, color: Colors.white, size: 28.0),
        SizedBox(height: 10.0),
        Text(
          '$value $units',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        // Text(
        //   '$units',
        //   style: TextStyle(fontSize: 15.0, color: Colors.white),
        // ),
      ],
    );
  }

}