import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:manga_excuse/manga_excuse.dart';
import 'package:widget/bloc/custom_bloc.dart';

part 'widget/splash_widget.dart';

part 'bloc/launch_bloc.dart';

part 'bloc/launch_event.dart';

part 'bloc/launch_state.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  LaunchBloc get bloc => context.read<LaunchBloc>();

  @override
  void initState() {
    super.initState();

    bloc.add(LaunchInitEvent());
  }

  @override
  Widget build(BuildContext context) {
    return CustomBloc(
      bloc: bloc,
      listener: _listener,
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: FlutterLogo(),
          ),
        );
      },
    );
  }

  void _listener(LaunchState previous, LaunchState current) {
    if (current is LaunchSingInState) {
      Navigator.of(context).pushReplacementNamed(
        ''
      );
    }
    if (current is LaunchSingUpState) {
      Navigator.of(context).pushReplacementNamed(
        ''
      );
    }
    if (current is LaunchHomeState) {
      Navigator.of(context).pushReplacementNamed(
        MainRoute.home,
      );
    }
  }
}
