import 'package:common/common.dart';
import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class SessionRepositoryImp extends SessionRepository {
  final SessionService _service;

  SessionRepositoryImp(this._service);

  @override
  Future<NetworkResponse<SessionEntity>> login({
    AccountParam? param,
  }) async {
    return runNetworkGuarded(
      run: () => _service.login(param: param),
      transform: (value) => SessionEntity.fromMap(
        value.toMap(),
      ),
    );
  }

  @override
  Future<NetworkResponse<SessionEntity>> nonLogin() {
    return runNetworkGuarded(
      run: () => _service.nonLogin(),
      transform: (value) => SessionEntity.fromMap(
        value.toMap(),
      ),
    );
  }
}
