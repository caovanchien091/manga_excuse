import 'package:source/domain/domain.dart';

abstract class SessionRepository {
  SessionEntity readSession();

  Future<bool> writeSession(SessionEntity session);
}
