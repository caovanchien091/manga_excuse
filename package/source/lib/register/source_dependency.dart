import 'package:common/common.dart';
import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class SourceDependency extends DependencyRegister {
  @override
  Future<void> register(injection) async {
    await dataRegister(injection);
    await domainRegister(injection);
  }

  Future<void> dataRegister(Injection injection) async {
    injection.factory<GatewayClient>(() => GatewayClient(injection.get()));
    injection.factory<CacheService>(() => CacheService(injection.get(), injection.get()));
    injection.factory<SessionService>(() => SessionService(injection.get(), injection.get()));
  }

  Future<void> domainRegister(Injection injection) async {
    injection.factory<CacheRepository>(() => CacheRepositoryImp(injection.get()));
    injection.factory<SessionRepository>(() => SessionRepositoryImp(injection.get()));
    injection.factory<AuthRepository>(() => AuthRepositoryImp(injection.get()));
  }
}
