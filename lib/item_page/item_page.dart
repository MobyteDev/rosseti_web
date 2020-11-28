import 'package:flutter/material.dart';

import 'widgets/pop_back_button.dart';
import 'widgets/description.dart';
import 'widgets/dish_card.dart';
import 'widgets/dish_name.dart';
import 'widgets/dish_subtitle.dart';
import 'widgets/navbar.dart';

class ItemPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final int price;
  final String description;
  ItemPage({this.title, this.subtitle, this.price, this.description});

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

    return Column(
      children: <Widget>[
        Expanded(
          flex: 88,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    PopBackButton(),
                    //Cart(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 24,
                  left: 24,
                  top: 6,
                  bottom: 24,
                ),
                child: Column(
                  children: <Widget>[
                    DishName(),
                    SizedBox(
                      height: 8,
                    ),
                    DishSubtitle(),
                  ],
                ),
              ),
              DishCard(),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 113,
                child: SingleChildScrollView(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Description(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 12,
          child: Navbar(
            description: description,
            price: price,
            subtitle: subtitle,
            title: title,
          ),
        ),
      ],
    );
  }
}
//TODO: сделать проверку на 0 блюд. Миша попросил
