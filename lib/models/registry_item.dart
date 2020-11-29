import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rosseti_web/models/profile.dart';

class RegistryItem {
  final int id;
  final String currentStateDes;
  final DateTime date;
  final Profile author; //TODO user
  final String title;
  final Status status;
  final String ideaStateDes;
  final int uniq;
  final int popularity;

  String get dateString => (date.day.toString() +
      "." +
      date.month.toString() +
      "." +
      date.year.toString());

  RegistryItem(
    this.id,
    this.date,
    this.author,
    this.title,
    this.status,
    this.currentStateDes,
    this.ideaStateDes,
    this.uniq,
    this.popularity,
  );

  static fromjson(Map<String, dynamic> json) {
    return RegistryItem(
      json['id'] as int,
      DateTime.parse(json['created_at']),
      Profile.test(),
      json['title'] as String,
      Status.values[json['status'] as int],
      json['problem'] as String,
      json['decision'] as String,
      json["uniqueness"] as int,
      json["popularity"] as int,
    );
  }
}

enum CurrentOrder {
  date,
  uniq,
  popularity,
  status,
}

enum Direction {
  all,
  direction1,
  direction2,
  direction3,
}

extension asStrDir on Direction {
  String get asString {
    switch (this) {
      case Direction.all:
        return "Всё";
      case Direction.direction1:
        return "direction1";
      case Direction.direction2:
        return "direction2";
      case Direction.direction3:
        return "direction3";
      default:
        throw UnimplementedError();
    }
  }
}

enum Region {
  region1,
  region2,
  region3,
}

extension asStrReg on Region {
  String get asString {
    switch (this) {
      case Region.region1:
        return "region1";
      case Region.region2:
        return "region2";
      case Region.region3:
        return "region3";
      default:
        throw UnimplementedError();
    }
  }
}

enum Status {
  denied,
  moderation,
  revision,
  accepted,
  implantation,
}

extension asStrStat on Status {
  String get asString {
    switch (this) {
      case Status.denied:
        return "Отклонено";
      case Status.moderation:
        return "На модерации";
      case Status.revision:
        return "На экспертизе";
      case Status.accepted:
        return "Принято";
      case Status.implantation:
        return "Идёт опытное применение";
      default:
        throw UnimplementedError();
    }
  }

  Color get asColor {
    switch (this) {
      case Status.denied:
        return Colors.red;
      case Status.moderation:
        return Colors.orange;
      case Status.revision:
        return Color(0xFFF1D43D);
      case Status.accepted:
        return Color(0xFF70B64F);
      case Status.implantation:
        return Color(0xFF4E8336);
      default:
        throw UnimplementedError();
    }
  }
}
