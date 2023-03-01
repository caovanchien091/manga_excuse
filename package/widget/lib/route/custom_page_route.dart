import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class CustomPageRoute<T> extends CustomPage<T> {
  final Widget child;
  final List<BlocProvider>? providers;

  CustomPageRoute({
    this.providers,
    required this.child,
    required RouteSettings settings,
  }) : super(settings);

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    if (providers.isNotEmpty) {
      return MultiBlocProvider(
        providers: providers!,
        child: child,
      );
    } else {
      return child;
    }
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Theme.of(context).pageTransitionsTheme.buildTransitions<T>(
        this, context, animation, secondaryAnimation, child);
  }
}
