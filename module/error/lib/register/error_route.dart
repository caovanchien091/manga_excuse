import 'package:common/common.dart';
import 'package:flutter/material.dart';

class ErrorRoute extends RouteRegister {
  static const authSingIn = '/authSignIn';
  static const authSingUp = '/authSignUp';

  @override
  List<String> routes = [
    ErrorRoute.authSingIn,
    ErrorRoute.authSingUp,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      case authSingIn:
      case authSingUp:
    }
  }
}
