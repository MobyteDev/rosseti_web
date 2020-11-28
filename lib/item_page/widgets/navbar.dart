import 'package:flutter/material.dart';

import 'cart.dart';

class Navbar extends StatelessWidget {
  final String description;
  final String title;
  final String subtitle;
  final int price;

  Navbar(
      {@required this.description,
      @required this.price,
      @required this.title,
      @required this.subtitle});
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
      padding: EdgeInsets.only(left: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Cart(),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 220,
              height: 52,
              decoration: BoxDecoration(
                color: Color(0xffFFEE94),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  'Редактировать',
                  style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.bodyText1.fontFamily,
                    color: Theme.of(context).textTheme.bodyText1.color,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
