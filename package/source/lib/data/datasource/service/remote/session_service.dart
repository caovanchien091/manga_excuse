import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class SessionService {
  final GatewayClient _client;

  SessionService(this._client);

  Future<SessionModel> login({
    AccountParam? param,
  }) async {
    // TODO: implement loginWithAccount
    throw UnimplementedError();
  }

  Future<SessionModel> nonLogin() async {
    // TODO: implement loginWithAccount
    throw UnimplementedError();
  }
}
