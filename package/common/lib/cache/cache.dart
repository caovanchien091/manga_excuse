abstract class Cache {
  int? readInt(String key);

  bool readBool(String key);

  double? readDouble(String key);

  String? readString(String key);

  Future<bool> write(String key, dynamic value);

  Future<bool> delete(String key);

  Future<bool> clear();
}
