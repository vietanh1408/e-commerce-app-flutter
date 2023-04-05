import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthenticationProvider extends ChangeNotifier {
  final requestBaseUrl = 'http://localhost:4000';

  bool _isLoading = false;
  String _resMessage = '';

  void register({
    required String email,
    required String password,
  }) async {
    _isLoading = true;
    notifyListeners();

    String url = "$requestBaseUrl/register/";

    final body = {
      "email": email,
      "password": password,
    };

    try {
      http.Response req = await http.post(
        Uri.parse(url),
        body: jsonEncode(body),
      );

      if (req.statusCode == 200 || req.statusCode == 201) {
        _isLoading = false;
        _resMessage = 'Register successfully';
        notifyListeners();

        print('register success');
      }
    } on SocketException catch (_) {
      _isLoading = false;
      _resMessage = 'Internet connection is not available';
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _resMessage = 'Please try again';
      notifyListeners();
      print('register fail');
    }
  }

  void login({
    required email,
    required password,
  }) async {
    _isLoading = true;
    notifyListeners();

    String url = "$requestBaseUrl/login";

    final body = {
      "email": email,
      "password": password,
    };

    try {
      http.Response req =
          await http.post(Uri.parse(url), body: jsonEncode(body));

      if (req.statusCode == 200 || req.statusCode == 201) {
        final res = jsonDecode(req.body);

        _isLoading = false;
        _resMessage = 'Login successfully';

        notifyListeners();

        print(res);
      }
    } catch (e) {
      _isLoading = false;
      _resMessage = "Please try again`";
      notifyListeners();
      print('login fail');
    }
  }
}
