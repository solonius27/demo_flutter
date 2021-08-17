import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  static const BASE_URL = "https://188.166.164.3:9595";

  // Using providers this can be retrieved at anypoint as it is available statewide.
  var _password;
  var _temptoken;
  var _token;

  Future<void> reset(String username) async {
    final url = Uri.parse("$BASE_URL/paysure/api/auth/reset");

    try {
      var post = await http
          .post(
        url,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: json.encode(
          {"ux": username},
        ),
      )
          .timeout(Duration(seconds: 60), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Check your internet and try again!');
      });

      var response = json.decode(post.body);
      print(response);

      if (post.statusCode != 202) {
        throw Exception(response["message"]);
      } else {
        _password = response["px"];
        _temptoken = response["rx"];
      }
    } on Exception catch (e) {
      throw e;
    }
  }

  Future<void> login(String username) async {
    final url = "$BASE_URL/paysure/api/auth/sys-login";

    try {
      var post = await http
          .post(
        url,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: json.encode(
          {
            "ux": username,
            "iv": _password,
            "key": _temptoken,
          },
        ),
      )
          .timeout(Duration(seconds: 60), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Check your internet and try again!');
      });

      var response = json.decode(post.body);
      print(response);

      if (post.statusCode != 202) {
        throw Exception(response["message"]);
      } else {
        _token = response["Authorization"];
      }
    } on Exception catch (e) {
      throw e;
    }
  }

  Future<void> createProfile(email, phone) async {
    final url = "$BASE_URL/paysure/api/processor/create-profile";

    try {
      var post = await http
          .post(
        url,
        headers: {
          "Authorization": "Bearer $_token",
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: json.encode(
          {
            "emailAddress": email,
            "phonePri": phone,
          },
        ),
      )
          .timeout(Duration(seconds: 60), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Check your internet and try again!');
      });

      var response = json.decode(post.body);
      print(response);

      if (post.statusCode != 202) {
        throw Exception(response["message"]);
      }
    } on Exception catch (e) {
      throw e;
    }
  }

  Future<void> otpValidation(userName, phone, pssword, verifypass, pin) async {
    final url = "$BASE_URL/paysure/api/processor/votp";

    try {
      var post = await http
          .post(
        url,
        headers: {
          "Authorization": "Bearer $_token",
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: json.encode(
          {
            "userName": userName,
            "otp": phone,
            "password": pssword,
            "verifyPassword": verifypass,
            "pin": pin,
            "verifyPin": pin,
          },
        ),
      )
          .timeout(Duration(seconds: 60), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Check your internet and try again!');
      });

      var response = json.decode(post.body);
      print(response);

      if (post.statusCode != 200) {
        throw Exception(response["message"]);
      } else {}
    } on Exception catch (e) {
      throw e;
    }
  }
}
