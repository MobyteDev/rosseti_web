import 'package:flutter/material.dart';
import 'package:rosseti_web/goods_page/widgets/titles_list.dart';
import 'package:rosseti_web/models/title_data.dart';

class Titles extends StatefulWidget {
  final double width;
  Titles(this.width);
  @override
  _TitlesState createState() => _TitlesState();
}

class _TitlesState extends State<Titles> {
  int _selectedIndex = 0;
  List<TitleData> _titleItems;
  void _tapHandler(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _titleItems = [
      TitleData(text: "Все", icon: Icons.room_service),
      TitleData(text: "Сладкое", icon: Icons.cake),
      TitleData(text: "Напитки", icon: Icons.local_drink),
      TitleData(text: "Завтрак", icon: Icons.free_breakfast),
      TitleData(text: "Салаты", icon: Icons.gradient),
      TitleData(text: "Японская кухня", icon: Icons.local_dining),
      TitleData(text: "Алкоголь", icon: Icons.dashboard),
      TitleData(text: "Торты", icon: Icons.pie_chart),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TitlesList(
      currentIndex: _selectedIndex,
      itemTapped: _tapHandler,
      items: _titleItems,
      width: widget.width,
    );
  }
}
