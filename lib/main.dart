import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'goods_page/goods_page.dart';
import 'helpers/tab_manager.dart';
import 'responsive_size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    TabManager.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        ResponsiveSize.init(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        );
        return child;
      },
      title: 'Appniswerwerwer Web',
      theme: ThemeData(
        primaryColor: Color(0xFF98D2F5),
        accentColor: Color(0xFFFFEE94),
        cardColor: Colors.white,
        backgroundColor: Color(0xffF7FAFD),
        disabledColor: Color(0xFFF1F1F1),
        textTheme: TextTheme(
            bodyText1: GoogleFonts.inter(
              color: Color(0xFF313131),
            ),
            bodyText2: GoogleFonts.inter(
              color: Color(0xFFA3AEB3),
            )),
      ),
      home: GoodsPage(),
    );
  }
}
