import 'package:flutter/material.dart';
import 'package:rosseti_web/models/option_item_data.dart';

import 'option_item.dart';

class OptionsList extends StatelessWidget {
  final ValueChanged<int> itemTapped;
  final int currentIndex;
  final List<OptionItemData> items;

  OptionsList({this.currentIndex = 0, this.itemTapped, this.items});

  OptionItemData get selectedItem =>
      currentIndex >= 0 && currentIndex < items.length
          ? items[currentIndex]
          : null;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 191,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (_, ind) => OptionItem(
          onTap: () {
            var index = items.indexOf(items[ind]);
            itemTapped(index);
          },
          data: items[ind],
          isSelected: items[ind] == selectedItem,
        ),
      ),
    );
  }
}
