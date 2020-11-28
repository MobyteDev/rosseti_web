import 'package:flutter/material.dart';
import 'package:rosseti_web/goods_page/widgets/titles.dart';

import '../sidebar_button.dart';

class NewCategoryAlert extends StatelessWidget {
  Widget _alertText(String text, BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    double _adaptiveHeight(double size) {
      return height * (size / 1080);
    }

    var width = MediaQuery.of(context).size.width;
    double _adaptiveWidth(double size) {
      return width * (size / 1440);
    }

    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).textTheme.bodyText1.color,
        fontSize: _adaptiveWidth(30),
        fontWeight: FontWeight.w500,
      ),
    );
  }

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

    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(
        horizontal: _adaptiveWidth(27),
        vertical: _adaptiveHeight(40),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      content: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          // width: _adaptiveWidth(1024),
          //height: _adaptiveHeight(720),
          width: 1024,
          child: Column(
            children: [
              _alertText("Выберите существующую категорию:", context),
              SizedBox(
                height: _adaptiveHeight(56),
              ),
              Titles((width - _adaptiveWidth(416) - 54) / 1),
              SizedBox(
                height: _adaptiveHeight(99),
              ),
              _alertText("Или создайте новую категорию:", context),
              SizedBox(
                height: _adaptiveHeight(56),
              ),
              Container(
                //TODO text field
                width: _adaptiveWidth(976),
                height: 64,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: _adaptiveHeight(200),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SidebarButton(
                    color: Theme.of(context).backgroundColor,
                    text: "Отмена",
                    icon: Icons.close,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SidebarButton(
                    color: Color(0xFFA0FFB5),
                    text: "Готово",
                    icon: Icons.check,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
