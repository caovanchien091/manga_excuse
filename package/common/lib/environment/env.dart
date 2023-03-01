import 'package:common/common.dart';

class Env {
  final Cache _cache;
  final EnvData _envData;

  const Env(this._cache, this._envData);

  bool get isLogger => _envData.isLogger;

  bool get isCheckNetwork => _envData.isCheckNetwork;

  String get lang => _cache.readString(langKey).orDefault(
        (self) => _envData.defaultLang,
      );

  String get currency => _cache.readString(currencyKey).orDefault(
        (self) => _envData.defaultLang,
      );

  String get timeFormat => _cache.readString(timeFormatKey).orDefault(
        (self) => _envData.defaultLang,
      );
}
