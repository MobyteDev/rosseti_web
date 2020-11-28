import 'package:flutter/material.dart';
import 'package:rosseti_web/models/title_data.dart';

import 'title_item.dart';

class TitlesList extends StatelessWidget {
  final ValueChanged<int> itemTapped;
  final int currentIndex;
  final List<TitleData> items;
  final double width;

  TitlesList({this.itemTapped, this.currentIndex = 0, this.items, this.width});

  TitleData get selectedItem => currentIndex >= 0 && currentIndex < items.length
      ? items[currentIndex]
      : null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: _getDishCategories(items, context),
        ),
      ),
    );
  }

  List<Row> _getDishCategories(
      List<TitleData> listOfDishCategoriesData, BuildContext context) {
    List<TitleItem> listOfDishCategories = [];
    for (int i = 0; i < listOfDishCategoriesData.length; i++) {
      listOfDishCategories.add(
        TitleItem(
          data: listOfDishCategoriesData[i],
          onTap: () {
            var index = items.indexOf(items[i]);
            itemTapped(index);
          },
          isSelected: items[i] == selectedItem,
        ),
      );
    }
    var addedElements = 0;
    var length = listOfDishCategories.length;
    var maxLineLength = width;
    List<Row> rows = [];
    while (addedElements < length) {
      double lineWidth = 0;
      List<Widget> rowList = [];
      double itemWidth =
          80.0 + listOfDishCategoriesData[addedElements].text.length * 10;
      while (addedElements < length && lineWidth + itemWidth < maxLineLength) {
        TitleItem titleItem = listOfDishCategories[addedElements];
        rowList.add(titleItem);
        lineWidth += itemWidth + 32;
        addedElements++;
        if (addedElements != length) {
          itemWidth =
              80.0 + listOfDishCategoriesData[addedElements].text.length * 10;
        }
      }
      Row row = Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: rowList,
      );
      rows.add(row);
    }
    return rows;
  }
}
