import 'package:common/common.dart';
import 'package:source/domain/domain.dart';

abstract class SessionRepository {
  Future<NetworkResponse<SessionEntity>> login({
    AccountParam? param,
  });

  Future<NetworkResponse<SessionEntity>> nonLogin();
}
