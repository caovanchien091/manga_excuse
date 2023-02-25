import 'package:common/common.dart';
import 'package:manga_excuse/manga_excuse.dart';

class MainDependency extends DependencyRegister {
  @override
  Future<void> register(injection) async {
    injection.factory<LaunchBloc>(() => LaunchBloc());
  }
}
