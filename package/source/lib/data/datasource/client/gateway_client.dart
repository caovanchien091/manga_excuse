import 'package:common/common.dart';

class GatewayClient extends NetworkClient {
  final Env _env;

  GatewayClient(this._env);

  @override
  bool get isLogger => _env.isLogger;

  @override
  bool get isCheckNetwork => _env.isCheckNetwork;

  @override
  String get baseUrl => '';

  @override
  List<Interceptor> get interceptors => [];

  @override
  Map<String, String> get headers => {};
}
