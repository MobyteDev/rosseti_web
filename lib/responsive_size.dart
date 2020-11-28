import 'package:flutter/material.dart';

class ResponsiveSize {
  static double _width = 1440;
  static double _height = 1024;
  static void init({@required double height, @required double width}) {
    _width = width;
    _height = height;
  }

  static double width(num value) {
    return value * (_width / 1440.0);
  }

  static double height(num value) {
    return value * (_height / 1024.0);
  }
}

extension ResponsiveOnNum on num {
  num get width => ResponsiveSize.width(this);
  num get height => ResponsiveSize.height(this);
}
