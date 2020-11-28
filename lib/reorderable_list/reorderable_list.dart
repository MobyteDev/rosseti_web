import 'package:flutter/material.dart';

import 'widgets/reorderable_list_dish_card.dart';

class ReorderableList extends StatefulWidget {
  @override
  _ReorderableListState createState() => _ReorderableListState();
}

class _ReorderableListState extends State<ReorderableList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          bottom: 88,
          left: 34,
          right: 40,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            10,
          ),
          border: Border.all(
            color: Color(0xffF0F0F0),
          ),
        ),
      ),
    );
  }
}
