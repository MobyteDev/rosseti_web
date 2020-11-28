import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              'statistics.png',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
