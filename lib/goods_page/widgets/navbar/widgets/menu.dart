import 'dart:ui';

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 294,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.only(
        left: 30,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Три орешка',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1.color,
              fontSize: 18,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.keyboard_arrow_down,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
