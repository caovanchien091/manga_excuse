import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:error/error.dart';
import 'package:source/source.dart';
import 'package:widget/widget.dart';
import 'package:manga_excuse/manga_excuse.dart';

class AppBootstrap extends Bootstrap {
  static AppBootstrap I = AppBootstrap();

  @override
  List<RouteRegister> routes = [
    SourceRoute(),
    WidgetRoute(),
    AuthRoute(),
  ];

  @override
  List<RouteRegister> errorRoutes = [
    ErrorRoute(),
  ];

  @override
  List<DependencyRegister> dependencies = [
    SourceDependency(),
    WidgetDependency(),
    AuthDependency(),
    ErrorDependency(),
  ];

  @override
  void complete(initRoute, onGenerate, onUnknown) {
    runApp(
      Application(
        initRoute: initRoute,
        onGenerateRoute: onGenerate,
        onUnknownRoute: onUnknown,
      ),
    );
  }
}
