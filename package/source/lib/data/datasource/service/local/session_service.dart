import 'dart:convert';

import 'package:common/common.dart';
import 'package:source/data/data.dart';

class SessionService {
  final Env _env;
  final Cache _cache;

  SessionService(this._env, this._cache);

  Future<bool> saveSession(SessionModel session) {
    return jsonEncode(session.toMap()).let(
      (self) => _cache.write(sessionKey, self),
    );
  }

  SessionModel readSession() {
    var jsonSession = _cache.readString(sessionKey);
    if (jsonSession == null) {
      return const SessionModel();
    }

    return SessionModel.fromMap(
      jsonDecode(jsonSession),
    );
  }
}
