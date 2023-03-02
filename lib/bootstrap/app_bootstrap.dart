import 'package:common/common.dart';
import 'package:manga_excuse/manga_excuse.dart';
import 'package:source/source.dart';
import 'package:widget/widget.dart';

class AppBootstrap extends Bootstrap {
  static final I = AppBootstrap();

  @override
  EnvData envData = EnvDefault();

  @override
  RouteRegister errorRoute = ErrorRoute();

  @override
  List<RouteRegister> routes = [
    WidgetRoute(),
    MainRoute(),
  ];

  @override
  List<DependencyRegister> dependencies = [
    SourceDependency(),
    WidgetDependency(),
    MainDependency(),
  ];
}
