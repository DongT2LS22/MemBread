import 'dart:convert';

import 'package:http/http.dart';

class User {
  String? id;
  String? name;
  String? phone;
  String? email;
  String? address;
  DateTime? birth;

  User({this.id, this.name, this.phone, this.email, this.address, this.birth});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    email = json['email'];
    address = json['address'];
    phone = json['phone'];
    birth = DateTime.parse(json['birth']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id ?? 0;
    data['name'] = name;
    data['email'] = email;
    data['address'] = address ?? "";
    data['phone'] = phone ?? "";
    data['birth'] = birth.toString();
    return data;
  }

  static Future<Response> register(User user, String password) async {
    final Map<String, dynamic> data = user.toJson();
    data['password'] = password;
    print(data);
    final response = await post(Uri.parse("http://10.0.2.2:8000/api/register"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data));

    return response;
  }

  static Future<Response> login(String email, String password) async {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;

    return await post(Uri.parse("http://10.0.2.2:8000/api/login"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data));
  }

  static Future<Response> reset(String email) async {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    return await post(Uri.parse("http://10.0.2.2:8000/api/password/email"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data));
  }
}
