import 'package:common/common.dart';

abstract class Bootstrap {
  abstract EnvData envData;
  abstract RouteRegister errorRoute;
  abstract List<RouteRegister> routes;
  abstract List<DependencyRegister> dependencies;

  void boot({
    required InitRoute initRoute,
    required BootstrapComplete complete,
  }) async {
    var injection = Injection.I;

    await _register(injection);

    for (var dependency in dependencies) {
      await dependency.register(
        injection,
      );
    }

    complete(
      initRoute(injection),
      (settings) {
        for (var route in routes) {
          if (route.contains(settings)) {
            return route.register(
              settings,
              injection,
            );
          }
        }
      },
      (settings) {
        return errorRoute.register(
          settings,
          injection,
        );
      },
    );
  }

  Future _register(Injection injection) async {
    // Init Hive cache local
    await Hive.initFlutter().then(
      (value) => Hive.openBox(cacheName).then(
        (value) => injection.factory<Cache>(
          () => DefaultCache(),
        ),
      ),
    );

    // Init Env data
    injection.singleton(Env(
      injection.get<Cache>(),
      envData,
    ));
  }
}
