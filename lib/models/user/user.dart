import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr1_flutter/config/server.dart';
import 'package:http/http.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
class User with _$User{
  const factory User({
    required String id,
    required String name,
    @Default("") String? phone,
    required String email,
    @Default("") String? address,
    @Default("") String? birth
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id ?? 0;
  //   data['name'] = name;
  //   data['email'] = email;
  //   data['address'] = address ?? "";
  //   data['phone'] = phone ?? "";
  //   data['birth'] = birth.toString();
  //   return data;
  // }

  static Future<Response> register(User user, String password) async {
    final Map<String, dynamic> data = user.toJson();
    data['password'] = password;
    print(data);
    final response = await post(Uri.parse("$URI/api/register"),
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

    return await post(Uri.parse("$URI/login"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data));
  }

  static Future<Response> reset(String email) async {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    return await post(Uri.parse("$URI/password/email"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data));
  }
}
