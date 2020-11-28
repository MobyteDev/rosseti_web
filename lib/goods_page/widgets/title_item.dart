import 'package:flutter/material.dart';
import 'package:rosseti_web/models/title_data.dart';

class TitleItem extends StatelessWidget {
  final TitleData data;
  final bool isSelected;
  final VoidCallback onTap;

  TitleItem({
    this.data,
    this.isSelected,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 32, bottom: 24),
        padding: EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
            color:
                isSelected ? Theme.of(context).primaryColor : Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(8)),
        height: 56,
        child: Row(
          children: <Widget>[
            Icon(
              data.icon,
              color: isSelected
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1.color,
            ),
            SizedBox(width: 16),
            Text(
              data.text,
              style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyText1.color,
                fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
