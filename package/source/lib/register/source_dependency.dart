import 'package:common/common.dart';
import 'package:source/source.dart';
import 'package:source/data/data.dart';

class SourceDependency extends DependencyRegister {
  @override
  Future<void> register(injection) async {
    injection.factory<CacheRepository>(
      () => CacheRepositoryImp(
        injection.get<Cache>(),
      ),
    );
  }
}
