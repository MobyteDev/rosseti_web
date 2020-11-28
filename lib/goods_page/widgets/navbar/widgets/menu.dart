import 'dart:ui';

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
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
      height: _adaptiveHeight(64),
      width: 294,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Container(
            height: _adaptiveHeight(48),
            width: 48,
            margin: EdgeInsets.symmetric(
              vertical: _adaptiveHeight(8),
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
              // image: DecorationImage(
              //   fit: BoxFit.fill,
              //   image: AssetImage('images/small_logo.png'),
              // ),
            ),
          ),
          Text(
            'Три орешка',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1.color,
              fontSize: 18,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                right: 20,
              ),
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
