import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  String description;
  Description() : description = "Qцуйц\nуйцуйц\nуйцуйц\nуйцуйц\nйцуйцуйцуйц\nуйцуйцуйцуцй\nqwewqeqweqweqwe";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    double _adaptiveHeight(double size) {
      return height * (size / 1080);
    }

    double _adaptiveWidth(double size) {
      return width * (size / 1440);
    }

    return Container(
        padding: EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 10,
        ),
        child: Column(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Описание',
              style: TextStyle(
                fontSize: 18,
                fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily,
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily,
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
            ),
          ],
        ));
  }
}
