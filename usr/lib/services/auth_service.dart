import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  bool _authenticated = false;
  String _userRole = '';

  bool get isAuthenticated => _authenticated;
  String get userRole => _userRole;

  Future<void> login(String role, String credential) async {
    // TODO: Replace with real authentication (email/OTP, ID/PIN, username/password)
    await Future.delayed(const Duration(seconds: 1));
    _authenticated = true;
    _userRole = role;
    notifyListeners();
  }

  void logout() {
    _authenticated = false;
    _userRole = '';
    notifyListeners();
  }
}
