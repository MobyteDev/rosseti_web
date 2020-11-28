import 'dart:ui';

import 'package:flutter/material.dart';

class ReorderableListDishCard extends StatelessWidget {
  ReorderableListDishCard({this.key});
  final Key key;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double _adaptiveHeight(double size) {
      return height * (size / 1024);
    }

    double _adaptiveWidth(double size) {
      return width * (size / 1440);
    }

    // var imageHolder = placeholder == null
    //     ? kTransparentImage
    //     : placeholder.buffer.asUint8List();
    return Container(
      width: 310,
      margin: EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(
              bottom: 18,
              top: 18,
              left: 64,
            ),
            margin: EdgeInsets.only(
              left: 40,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Прага',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontFamily:
                            Theme.of(context).textTheme.bodyText1.fontFamily,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '180 г. / 436 Ккал',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText2.color,
                        fontFamily:
                            Theme.of(context).textTheme.bodyText2.fontFamily,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "${165} ₽",
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontFamily:
                            Theme.of(context).textTheme.bodyText1.fontFamily,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ClipOval(
            child: FadeInImage(
              fadeInDuration: Duration(milliseconds: 500),
              height: 84.5,
              width: 84.5,
              fit: BoxFit.cover,
              placeholder: AssetImage('images/Frame_73.png'),
              image: AssetImage("images/dish_photo.png"),
            ),
          ),
        ],
      ),
    );
  }
}

/*
Container(
      width: 315,
      margin: EdgeInsets.only(
        bottom: 40,
      ),
      color: Colors.red,
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 35,
            child: Container(
              padding: EdgeInsets.only(bottom: 18, top: 18, left: 64),
              width: 280,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Прага',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontFamily:
                          Theme.of(context).textTheme.bodyText1.fontFamily,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '180 г. / 436 Ккал',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText2.color,
                      fontFamily:
                          Theme.of(context).textTheme.bodyText2.fontFamily,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "${165} ₽",
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontFamily:
                          Theme.of(context).textTheme.bodyText1.fontFamily,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ClipOval(
            child: FadeInImage(
              fadeInDuration: Duration(milliseconds: 500),
              height: 84.5,
              width: 84.5,
              fit: BoxFit.cover,
              placeholder: AssetImage('images/Frame_73.png'),
              image: AssetImage("images/dish_photo.png"),
            ),
          ),
        ],
      ),
    ); */
