import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:manga_excuse/manga_excuse.dart';
import 'package:widget/widget.dart';

class ErrorRoute extends RouteRegister {
  static const notFound = "/not_found";

  @override
  List<String> routes = [
    ErrorRoute.notFound,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      default:
        return _buildNotFound(settings, injection);
    }
  }

  Route _buildNotFound(RouteSettings settings, Injection injection) {
    return CustomPageRoute(
      settings: settings,
      child: const NotFoundScreen(),
    );
  }
}
