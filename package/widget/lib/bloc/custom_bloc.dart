import 'package:common/common.dart';
import 'package:flutter/material.dart';

typedef BlocCustomListener<S> = void Function(S previous, S current);
typedef BlocCustomBuildWhen<S> = bool Function(S previous, S current);
typedef BlocCustomBuilder<S> = Widget Function(BuildContext context, S state);

class CustomBloc<BLOC extends StateStreamable<S>, S> extends StatelessWidget {
  final BLOC bloc;
  final List<Type>? selectors;
  final BlocCustomBuilder<S> builder;
  final BlocCustomListener<S>? listener;
  final BlocCustomBuildWhen<S>? buildWhen;

  const CustomBloc({
    Key? key,
    this.listener,
    this.selectors,
    this.buildWhen,
    required this.bloc,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BLOC, S>(
      bloc: bloc,
      builder: builder,
      buildWhen: (previous, current) {
        if (listener != null) {
          listener!(previous, current);
        }
        if (buildWhen != null) {
          return buildWhen!(previous, current);
        }
        if (selectors != null) {
          for (var selector in selectors!) {
            if (current.runtimeType == selector) {
              return true;
            }
          }
          return false;
        }
        return true;
      },
    );
  }
}
