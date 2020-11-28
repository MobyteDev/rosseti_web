import 'package:flutter/material.dart';
import 'package:rosseti_web/responsive_size.dart';

class SidebarButton extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  SidebarButton({
    @required this.color,
    @required this.text,
    @required this.icon,
    @required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 21.width),
        width: 263,
        height: 64,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                icon,
                color: Colors.black,
                size: 22,
              ),
            ),
            SizedBox(
              width: 30.width,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily,
                color: Theme.of(context).textTheme.bodyText1.color,
                fontSize: text.length > 15 ? 13 : 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
