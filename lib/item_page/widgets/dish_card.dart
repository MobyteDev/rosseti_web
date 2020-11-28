import 'package:flutter/material.dart';

class DishCard extends StatelessWidget {
  // int price;
  // DishCard({this.price});

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
      width: 312,
      height: 341,
      decoration: BoxDecoration(
          //color: Color(0xffF8FBFE),
          color: Color(0xffF8FBFE),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Stack(
        children: <Widget>[
          Container(
            height: 281,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/dish_photo.png'))),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(
              bottom: 18,
              right: 20,
              left: 20,
              top: 19,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Цена: ',
                  style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.bodyText1.fontFamily,
                    color: Theme.of(context).textTheme.bodyText1.color,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '120 ₽',
                  style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.bodyText1.fontFamily,
                    color: Theme.of(context).textTheme.bodyText1.color,
                    //color: Theme.of(context).textTheme.bodyText1.color,
                    fontSize: 21,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
