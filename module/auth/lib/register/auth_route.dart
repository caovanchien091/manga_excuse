import 'package:common/common.dart';
import 'package:flutter/material.dart';

class AuthRoute extends RouteRegister {
  static const authSingIn = '/authSignIn';
  static const authSingUp = '/authSignUp';

  @override
  List<String> routes = [
    AuthRoute.authSingIn,
    AuthRoute.authSingUp,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      case authSingIn:
      case authSingUp:
    }
  }
}
