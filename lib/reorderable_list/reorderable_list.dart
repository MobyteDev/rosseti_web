import 'package:flutter/material.dart';

import 'widgets/reorderable_list_dish_card.dart';

class ReorderableList extends StatefulWidget {
  @override
  _ReorderableListState createState() => _ReorderableListState();
}

class _ReorderableListState extends State<ReorderableList> {
  List<ReorderableListDishCard> _listOfDishes = [
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
    ReorderableListDishCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        onReorder: (
          int oldIndex,
          int newIndex,
        ) {},
        children: [
          for (final item in _listOfDishes)
            ReorderableListDishCard(
              key: ValueKey(item),
            )
        ],
      ),
    );
  }
}
