import 'package:flutter/material.dart';

abstract class CustomPage<T> extends PageRoute<T> {
  CustomPage(
    RouteSettings settings,
  ) : super(settings: settings);

  @override
  bool get maintainState => true;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  Duration get transitionDuration {
    return const Duration(
      milliseconds: 250,
    );
  }
}
