import 'package:common/common.dart';

const String cacheName = 'cacheDefault';

class DefaultCache extends Cache {
  final _cacheBox = Hive.box(cacheName);

  @override
  int? readInt(String key) {
    var data = _cacheBox.get(key);
    if (data is int) {
      return data;
    }
  }

  @override
  bool readBool(String key) {
    var data = _cacheBox.get(key);
    if (data is bool) {
      return data;
    } else {
      return false;
    }
  }

  @override
  double? readDouble(String key) {
    var data = _cacheBox.get(key);
    if (data is double) {
      return data;
    }
  }

  @override
  String? readString(String key) {
    var data = _cacheBox.get(key);
    if (data is String) {
      return data;
    }
  }

  @override
  Future<bool> write(String key, dynamic value) async {
    try {
      _cacheBox.put(key, value);
      return true;
    } catch (error) {
      return false;
    }
  }

  @override
  Future<bool> delete(String key) async {
    try {
      _cacheBox.delete(key);
      return true;
    } catch (error) {
      return false;
    }
  }

  @override
  Future<bool> clear() async {
    try {
      _cacheBox.deleteFromDisk();
      return true;
    } catch (error) {
      return false;
    }
  }
}
