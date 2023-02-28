import 'package:common/common.dart';

class GatewayClient extends NetworkClient {
  @override
  String get baseUrl => '';

  @override
  List<Interceptor> get interceptors => [];

  @override
  Map<String, String> get headers => {};
}
