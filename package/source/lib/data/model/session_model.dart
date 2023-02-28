class SessionModel {
  final String? refreshToken;
  final String? accessToken;
  final String? tokenType;
  final String? expiresIn;
  final String? accountType;
  final String? accountEnable;

  const SessionModel({
    this.refreshToken,
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.accountType,
    this.accountEnable,
  });

  Map<String, dynamic> toMap() {
    return {
      'refreshToken': refreshToken,
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn,
      'accountType': accountType,
      'accountEnable': accountEnable,
    };
  }

  factory SessionModel.fromMap(Map<String, dynamic> map) {
    return SessionModel(
      refreshToken: map['refreshToken'] as String?,
      accessToken: map['accessToken'] as String?,
      tokenType: map['tokenType'] as String?,
      expiresIn: map['expiresIn'] as String?,
      accountType: map['accountType'] as String?,
      accountEnable: map['accountEnable'] as String?,
    );
  }
}
