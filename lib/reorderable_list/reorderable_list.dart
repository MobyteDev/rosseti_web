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
          padding: EdgeInsets.only(
            top: 45,
            left: 52,
            right: 42,
            bottom: 45,
          ),
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
          child: Column(
            children: [
              Text(
                'Рацпредложения',
                style: TextStyle(fontSize: 16, color: Color(0xff858585)),
              ),
              DataTable(
                columns: [
                  DataColumn(label: Text("id")),
                  DataColumn(label: Text("chat_id")),
                  DataColumn(label: Text("current_state_description")),
                  DataColumn(label: Text("date")),
                  DataColumn(label: Text("author")),
                  DataColumn(label: Text("title")),
                  DataColumn(label: Text("numberAccepted")),
                  DataColumn(label: Text("direction")),
                ],
                rows: [],
              ),
            ],
          )),
    );
  }
}
