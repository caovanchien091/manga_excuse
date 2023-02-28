import 'package:common/common.dart';

class CacheService {
  final Env _env;
  final Cache _cache;

  CacheService(this._cache, this._env);

  String readLang() {
    return _cache.readString(langKey) ?? _env.lang;
  }

  String readCurrency() {
    return _cache.readString(langKey) ?? _env.lang;
  }

  String readTimeFormat() {
    return _cache.readString(langKey) ?? _env.lang;
  }

  Future<bool> writeLang(String lang) {
    return _cache.write(langKey, lang);
  }

  Future<bool> writeCurrency(String currency) {
    return _cache.write(currencyKey, currency);
  }

  Future<bool> writeTimeFormat(String timeFormat) {
    return _cache.write(timeFormatKey, timeFormat);
  }
}
