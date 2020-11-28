import 'package:flutter/material.dart';

import 'widgets/menu.dart';
import 'widgets/search.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 750) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Search(),
                Menu(),
              ],
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 40,
                  ),
                  child: Menu(),
                ),
                Search(),
              ],
            );
          }
        },
      ),
    );
  }
}
