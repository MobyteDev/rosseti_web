import 'dart:async';

import 'dart:io';

enum Menu { ratSuggestionTab, statisticsTab, expertsTab }

class TabManager {
  static StreamController<Menu> controller;
  static Stream<Menu> stream;
  static void init() {
    controller = StreamController<Menu>();
    controller.add(Menu.ratSuggestionTab);
    stream = controller.stream;
  }
}
