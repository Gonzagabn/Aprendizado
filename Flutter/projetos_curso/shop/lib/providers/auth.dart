import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/utils/constants.dart';

class Auth with ChangeNotifier {
  Future<void> _authenticate(
      String email, String password, String authMethod) async {
    final url = Uri.parse(authMethod);

    final response = await http.post(
      url,
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    print(json.encode(response.body));

    return Future.value();
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, Constants.AUTH_SIGNUP_API_URL);
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, Constants.AUTH_LOGIN_API_URL);
  }
}
