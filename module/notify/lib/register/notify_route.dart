import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class NotificationRoute extends RouteRegister {
  @override
  List<String> routes = [];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
    }
  }

  Route _buildSignUp(RouteSettings settings, Injection injection) {
    return CustomPageRoute(
      settings: settings,
      child: Container(),
    );
  }
}
