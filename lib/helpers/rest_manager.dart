import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rosseti_web/models/application.dart';
import 'package:rosseti_web/models/applications.dart';
import 'package:rosseti_web/models/registry.dart';
import 'package:rosseti_web/models/registry_item.dart';

class RestManager {
  static String _user_token;
  static void init() {
    _auth();
  }

  static void _auth() async {
    var res =
        await http.post("http://178.154.255.209:3333/admin_token", headers: {
      'Content-Type': 'application/json'
    }, body: {
      "auth": {"email": "admin@rosseti.ru", "password": "12345"}
    });
    if (res.statusCode == 201) {
      print("_auth success");
      _user_token =
          (jsonDecode(res.body) as Map<String, dynamic>)["jwt"].toString();
      print(_user_token);
    } else {
      print('ploxo');
    }
  }

  static void updateStatus(int id, int new_status) async {
    var res = await http
        .put("http://178.154.255.209:3333/applications/${id}", headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${_user_token}'
    }, body: {
      "application": {"status": new_status}
    });
    if (res.statusCode == 200) {
      print("updateStatus success");
    }
  }

  static Future<Registry> getRegistry() async {
    print(1);
    print(_user_token);
    var res = await http.get("http://178.154.255.209:3333/applications",
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${_user_token}'
        });
    if (res.statusCode == 200) {
      print("getApplications success");
      Registry registry = Registry()
        ..statements = (jsonDecode(res.body) as List<dynamic>)
            .map((e) => RegistryItem.fromjson(e))
            .toList();
      print(registry.statements.length);
      return registry;
    }
  }
}
