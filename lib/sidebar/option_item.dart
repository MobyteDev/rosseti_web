import 'package:flutter/material.dart';
import 'package:rosseti_web/models/option_item_data.dart';

class OptionItem extends StatelessWidget {
  final OptionItemData data;
  final bool isSelected;
  final VoidCallback onTap;

  OptionItem({this.data, this.isSelected, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.001)),
        width: 343,
        height: 73,
        child: Row(
          children: [
            Icon(
              data.icon,
              color: isSelected ? Color(0xff005B9C) : Color(0xff818181),
              size: 20,
            ),
            SizedBox(
              width: 27,
            ),
            Text(
              data.text,
              style: TextStyle(
                color: isSelected ? Color(0xff005B9C) : Color(0xff818181),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
