import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 420,
      padding: EdgeInsets.only(left: 28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            size: 24,
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
