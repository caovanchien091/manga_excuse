import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class SessionRepositoryImp extends SessionRepository {
  final SessionService _service;

  SessionRepositoryImp(this._service);

  @override
  SessionEntity readSession() {
    return SessionEntity.fromMap(
      _service.readSession().toMap(),
    );
  }

  @override
  Future<bool> writeSession(SessionEntity session) {
    return _service.saveSession(
      SessionModel.fromMap(
        session.toMap(),
      ),
    );
  }
}
