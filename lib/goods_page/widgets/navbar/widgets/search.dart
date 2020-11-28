import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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

    return Container(
      height: _adaptiveHeight(64),
      width: 420,
      padding: EdgeInsets.only(left: 26),
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F4),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            size: _adaptiveHeight(30),
            color: Theme.of(context).textTheme.bodyText2.color,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "Поиск",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2.color,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
