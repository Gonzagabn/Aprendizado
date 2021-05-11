import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  static const _url =
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDfTFhQTdUr5SjJHJlnjk3VdysJnF0pZ1o';
  Future<void> signup(String email, String password) async {
    final response = await http.post(
      Uri.https(_url, ''),
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    print(json.encode(response.body));

    return Future.value();
  }
}
