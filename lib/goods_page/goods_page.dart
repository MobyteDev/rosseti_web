import 'package:flutter/material.dart';
import 'package:rosseti_web/helpers/tab_manager.dart';
import 'package:rosseti_web/reorderable_list/experts_tab.dart';
import 'package:rosseti_web/reorderable_list/reorderable_list.dart';
import 'package:rosseti_web/sidebar/sidebar.dart';
import 'package:rosseti_web/statistic_page/statistic_page.dart';
import 'widgets/navbar/goods_navbar.dart';

class GoodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Row(
        children: [
          Sidebar(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Navbar(),
                StreamBuilder(
                  stream: TabManager.stream,
                  builder: (context, snapshot) {
                    switch (snapshot.data) {
                      case Menu.ratSuggestionTab:
                        return StatisticPage();
                        break;
                      case Menu.statisticsTab:
                        return StatisticPage();
                        break;
                      case Menu.expertsTab:
                        return ExpertsTab();
                        break;
                      default:
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
