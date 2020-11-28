import 'package:flutter/material.dart';
import 'package:rosseti_web/reorderable_list/reorderable_list.dart';
import 'package:rosseti_web/sidebar/sidebar.dart';

import 'widgets/navbar/goods_navbar.dart';
import 'widgets/titles.dart';

class GoodsPage extends StatelessWidget {
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
                Titles(MediaQuery.of(context).size.width - 343 - 63),
                SizedBox(height: 45),
                Expanded(
                  child: Center(
                    child: ReorderableList(),
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
