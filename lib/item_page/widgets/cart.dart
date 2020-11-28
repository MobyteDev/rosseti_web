import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
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

    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => Container()));
      },
      child: Container(
        height: 40,
        width: 54,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Icon(
          Icons.delete_outline,
          color: Color(0xffffffff),
          size: 30,
        ),
      ),
    );
  }
}
