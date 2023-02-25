import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class AuthRoute extends RouteRegister {
  static const signIn = '/signIn';
  static const signUp = '/signUp';

  @override
  List<String> routes = [
    AuthRoute.signIn,
    AuthRoute.signUp,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      case signIn:
        return _buildSignIn(settings, injection);
      case signUp:
        return _buildSignUp(settings, injection);
    }
  }

  Route _buildSignIn(RouteSettings settings, Injection injection) {
    return CustomPageRoute(
      settings: settings,
      child: const SignInScreen(),
    );
  }

  Route _buildSignUp(RouteSettings settings, Injection injection) {
    return CustomPageRoute(
      settings: settings,
      child: const SignUpScreen(),
    );
  }
}
