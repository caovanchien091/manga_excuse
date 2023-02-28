import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:manga_excuse/manga_excuse.dart';
import 'package:widget/widget.dart';

class MainRoute extends RouteRegister {
  static const home = '/home';
  static const launch = '/launch';

  @override
  List<String> routes = [
    MainRoute.launch,
    MainRoute.home,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      case launch:
        return _buildLaunch(settings, injection);
      case home:
        return _buildHome(settings, injection);
    }
  }

  Route _buildLaunch(RouteSettings settings, Injection injection) {
    return CustomPageRoute(
      providers: [
        BlocProvider<LaunchBloc>(
          create: (context) {
            return injection.get<LaunchBloc>();
          },
        ),
      ],
      settings: settings,
      child: const LaunchScreen(),
    );
  }

  Route _buildHome(RouteSettings settings, Injection injection) {
    return CustomPageRoute(
      providers: [
        BlocProvider<LaunchBloc>(
          create: (context) {
            return injection.get<LaunchBloc>();
          },
        ),
      ],
      settings: settings,
      child: const HomeScreen(),
    );
  }
}
