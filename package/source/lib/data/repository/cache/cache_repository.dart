import 'package:common/common.dart';
import 'package:source/source.dart';

class CacheRepositoryImp extends CacheRepository {
  final Cache _cache;

  CacheRepositoryImp(this._cache);

  @override
  Future<bool> writeCurrency(String currency) {
    return _cache.write(currencyKey, currency);
  }

  @override
  Future<bool> writeLang(String lang) {
    return _cache.write(langKey, lang);
  }

  @override
  Future<bool> writeTimeFormat(String timeFormat) {
    return _cache.write(timeFormatKey, timeFormat);
  }
}
