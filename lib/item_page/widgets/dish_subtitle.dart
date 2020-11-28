import 'package:flutter/material.dart';

class DishSubtitle extends StatelessWidget {
  //final String subtitle;
  //DishSubtitle({this.subtitle = '110 г / 319 каллорий'});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    double _adaptiveWidth(double size) {
      return width * (size / 1440);
    }

    return Text(
      "110 г",
      style: TextStyle(
        fontSize: 16,
        color: Theme.of(context).textTheme.bodyText2.color,
      ),
    );
  }
}
