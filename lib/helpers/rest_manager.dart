import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rosseti_web/models/application.dart';
import 'package:rosseti_web/models/applications.dart';
import 'package:rosseti_web/models/registry.dart';
import 'package:rosseti_web/models/registry_item.dart';

class RestManager {
  static String _user_token;
  static void init() async {
    await auth();
  }

  static void auth() async {
    String js = json.encode({
      "auth": {"email": "admin@rosseti.ru", "password": "12345"}
    });
    var res = await http.post(
      "http://178.154.255.209:3333/admin_token",
      headers: {
        "Content-Type": 'application/json',
      },
      body: js,
    );
    if (res.statusCode == 201) {
      print("_auth success");
      _user_token =
          (jsonDecode(res.body) as Map<String, dynamic>)["jwt"].toString();
    }
  }

  static void updateStatus(int id, int new_status) async {
    String js = json.encode({
      "application": {"status": new_status}
    });
    var res = await http.put("http://178.154.255.209:3333/applications/${id}",
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${_user_token}"
        },
        body: js);
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
      Registry registry = Registry();
      registry.statements = [];
      (jsonDecode(res.body) as List<dynamic>).forEach((element) {
        registry.statements.add(RegistryItem.fromjson(element));
      });
      return registry;
    }
  }
}
