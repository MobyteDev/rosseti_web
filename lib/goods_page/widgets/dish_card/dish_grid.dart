import 'package:flutter/material.dart';

import 'dish_card.dart';

class DishGrid extends StatelessWidget {
  List<DishCard> listOfDishes = [
    DishCard(
      title: '1',
      subtitle: 'qwe',
      price: 123,
    ),
    DishCard(
      title: '2',
      subtitle: 'qwe',
      price: 123,
    ),
    DishCard(
      title: '3',
      subtitle: 'qwe',
      price: 123,
    ),
    DishCard(
      title: '4',
      subtitle: 'qwe',
      price: 123,
    ),
    DishCard(
      title: '5',
      subtitle: 'qwe',
      price: 123,
    ),
    DishCard(
      title: '6',
      subtitle: 'qwe',
      price: 123,
    ),
    DishCard(
      title: '7',
      subtitle: 'qwe',
      price: 123,
    ),
    DishCard(
      title: '8',
      subtitle: 'qwe',
      price: 123,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double _adaptiveWidth(double size) {
      return width * (size / 1440);
    }

    return SingleChildScrollView(
      child: Column(
        children: _getDishes(listOfDishes, context),
      ),
    );
  }

  List<Row> _getDishes(List<Widget> listOfDishes, BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var maxNumInRow = ((width - 343 - 50) / 260).floor();
    if (maxNumInRow == 0) {
      maxNumInRow = 1;
    }

    // if (width > 1410) {
    //   maxNumInRow = ;
    // } else if (width > 1140) {
    //   maxNumInRow = 3;
    // } else if (width > 880) {
    //   maxNumInRow = 2;
    // } else if (width > 615) {
    //   maxNumInRow = 1;
    // } else {
    //   maxNumInRow = 1;
    // }

    int numOfRows = (listOfDishes.length / maxNumInRow).ceil();
    var rows = List<Row>(numOfRows);
    for (int i = 0; i < numOfRows; i++) {
      var newList = listOfDishes.skip(i * maxNumInRow);
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: newList.take(maxNumInRow).toList(),
      );
      rows[i] = row;
    }
    return rows;
  }
}
