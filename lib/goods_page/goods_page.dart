import 'package:flutter/material.dart';
import 'package:rosseti_web/reorderable_list/reorderable_list.dart';
import 'package:rosseti_web/sidebar/sidebar.dart';
import 'widgets/navbar/goods_navbar.dart';

class GoodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Row(
        children: [
          Sidebar(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Navbar(),
                ReorderableList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
