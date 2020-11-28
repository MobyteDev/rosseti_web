import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rosseti_web/item_page/item_page.dart';

class DishCard extends StatelessWidget {
  String title;
  String subtitle;
  int price;
  String decription;

  DishCard({
    this.price = 1200,
    this.subtitle = 'Цена за кг. торта',
    this.title = 'Прага',
    this.decription =
        'Торт-безе, созданный австралийскими кондитерами сто лет назад в честь русской балерины Анны Павловой, напоминает белоснежную балетную пачку. Легкий, воздушный, кружевной десерт.',
  });
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

    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                contentPadding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                content: SingleChildScrollView(
                  child: Container(
                    height: 740,
                    width: 360,
                    child: ItemPage(
                      title: title,
                      subtitle: subtitle,
                      price: price,
                      description: decription,
                    ),
                  ),
                ),
              );
            });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        height: 282,
        width: 224,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Positioned(
              top: -40,
              left: 28,
              child: Container(
                child: Container(
                  height: 168,
                  width: 168,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).textTheme.bodyText2.color,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '$price ₽',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontSize: 21,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
