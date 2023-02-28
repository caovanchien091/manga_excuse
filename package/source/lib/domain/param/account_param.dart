class AccountParam {
  final String? username;
  final String? password;

  const AccountParam({
    this.username,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
    };
  }

  factory AccountParam.fromMap(Map<String, dynamic> map) {
    return AccountParam(
      username: map['username'] as String?,
      password: map['password'] as String?,
    );
  }
}
