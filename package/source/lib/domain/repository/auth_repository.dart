import 'package:common/common.dart';
import 'package:source/domain/domain.dart';

abstract class AuthRepository {
  Future<NetworkResponse<SessionEntity>> nonLogin();

  Future<NetworkResponse<SessionEntity>> login({
    AccountParam? param,
  });
}
