import 'package:flutter/material.dart';

class DishName extends StatelessWidget {
  //final String title;
  //DishName({this.title = 'Aнна Павловна'});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    double _adaptiveWidth(double size) {
      return width * (size / 1440);
    }

    return Text(
      'Aнна Павловна',
      style: TextStyle(
        //color: Theme.of(context).textTheme.bodyText1.color,
        fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily,
        color: Theme.of(context).textTheme.bodyText1.color,
        fontSize: 21,
      ),
    );
  }
}
