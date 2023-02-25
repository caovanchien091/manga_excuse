import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:widget/route/custom_page_route.dart';

class ErrorRoute extends RouteRegister {
  @override
  List<String> routes = [];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      default:
        return CustomPageRoute(
          settings: settings,
          child: Container(),
        );
    }
  }
}
