import 'package:common/common.dart';
import 'package:flutter/material.dart';

abstract class Bootstrap {
  abstract List<RouteRegister> routes;
  abstract List<RouteRegister> errorRoutes;
  abstract List<DependencyRegister> dependencies;


  void complete(
    String initRoute,
    GenerateRoute onGenerate,
    GenerateRoute onUnknown,
  );

  void boot({
    required RunApp runApp,
    required InitRoute initRoute,
  }) async {
    await _register(Injection.I);

    for (var dependency in dependencies) {
      await dependency.register(
        Injection.I,
      );
    }

    complete(
      initRoute(Injection.I),
      (settings) => _generateRoute(routes, settings),
      (settings) => _generateRoute(errorRoutes, settings),
    );
  }

  Route<dynamic>? _generateRoute(
    List<RouteRegister> routes,
    RouteSettings settings,
  ) {
    for (var route in routes) {
      if (route.contains(settings)) {
        return route.register(
          settings,
          Injection.I,
        );
      }
    }
  }

  Future _register(Injection injection) async {
    await Hive.initFlutter().then(
      (value) => Hive.openBox(cacheName).then(
        (value) => injection.factory<Cache>(
          () => DefaultCache(),
        ),
      ),
    );
  }
}
