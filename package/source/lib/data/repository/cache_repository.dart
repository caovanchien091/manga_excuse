import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class CacheRepositoryImp extends CacheRepository {
  final CacheService _service;

  CacheRepositoryImp(this._service);

  @override
  String readLang() {
    return _service.readLang();
  }

  @override
  String readCurrency() {
    return _service.readCurrency();
  }

  @override
  String readTimeFormat() {
    return _service.readTimeFormat();
  }

  @override
  Future<bool> writeCurrency(String currency) {
    return _service.writeCurrency(currency);
  }

  @override
  Future<bool> writeLang(String lang) {
    return _service.writeLang(lang);
  }

  @override
  Future<bool> writeTimeFormat(String timeFormat) {
    return _service.writeTimeFormat(timeFormat);
  }
}
