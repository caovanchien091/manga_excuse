class UserEntity {
  final String? firstName;
  final String? lastName;
  final String? birthDay;
  final String? gender;
  final String? email;
  final String? avatar;

  const UserEntity({
    this.firstName,
    this.lastName,
    this.birthDay,
    this.gender,
    this.email,
    this.avatar,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'birthDay': birthDay,
      'gender': gender,
      'email': email,
      'avatar': avatar,
    };
  }

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      firstName: map['firstName'] as String?,
      lastName: map['lastName'] as String?,
      birthDay: map['birthDay'] as String?,
      gender: map['gender'] as String?,
      email: map['email'] as String?,
      avatar: map['avatar'] as String?,
    );
  }
}
