import 'package:flutter/material.dart';
import 'package:rosseti_web/models/option_item_data.dart';
import 'package:rosseti_web/responsive_size.dart';
import '../sidebar_button.dart';
import 'options_list.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int _selectedIndex = 0;
  List<OptionItemData> _optionItems;
  void _tapHandler(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _optionItems = [
      OptionItemData(text: "Реестр рацпредложений", icon: Icons.room_service),
      OptionItemData(text: "Статистика", icon: Icons.trending_up),
      OptionItemData(text: "Таблица экспертов", icon: Icons.person_add),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 343,
      padding: EdgeInsets.only(
        left: 40,
        top: 39,
      ),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'logo.png',
              height: 77,
              width: 264,
            ),
          ),
          SizedBox(
            height: 193,
          ),
          OptionsList(
            currentIndex: _selectedIndex,
            itemTapped: _tapHandler,
            items: _optionItems,
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 21.height),
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 21),
            width: 263,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xFFF7FAFD),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
                SizedBox(
                  width: 31.width,
                ),
                Text(
                  "Выйти",
                  style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.bodyText1.fontFamily,
                    color: Theme.of(context).textTheme.bodyText1.color,
                    fontSize: 18,
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
