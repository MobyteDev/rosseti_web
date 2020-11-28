import 'package:flutter/material.dart';

class PopBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    double _adaptiveHeight(double size) {
      return height * (size / 1080);
    }

    double _adaptiveWidth(double size) {
      return width * (size / 1440);
    }

    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFD3DADD),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Icon(Icons.close),
      ),
    );
  }
}
