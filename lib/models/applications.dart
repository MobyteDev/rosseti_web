import 'package:json_annotation/json_annotation.dart';
import 'package:rosseti_web/models/application.dart';

part 'applications.g.dart';

@JsonSerializable(nullable: true)
class Applications {
  List<Application> applications;
  Applications({this.applications});

  factory Applications.fromJson(Map<String, dynamic> json) =>
      _$ApplicationsFromJson(json);
  //Map<String, dynamic> toJson() => _$ApplicationsToJson(this);
}
