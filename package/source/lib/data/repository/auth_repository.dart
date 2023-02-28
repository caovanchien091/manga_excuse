import 'package:common/common.dart';
import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class AuthRepositoryImp extends AuthRepository {
  final AuthService _service;

  AuthRepositoryImp(this._service);

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
