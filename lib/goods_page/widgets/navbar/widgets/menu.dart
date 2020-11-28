import 'dart:ui';

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xffF0F0F0),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(
        left: 30,
        right: 11,
      ),
      child: Center(
        child: Text(
          'Ответственный за рационализаторскую деятельность Иванов И.И.',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
