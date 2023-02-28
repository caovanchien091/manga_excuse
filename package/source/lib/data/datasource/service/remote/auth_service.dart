import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class AuthService {
  final GatewayClient _client;

  AuthService(this._client);

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
