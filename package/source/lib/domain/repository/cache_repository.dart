abstract class CacheRepository {
  String readLang();

  String readCurrency();

  String readTimeFormat();

  Future<bool> writeLang(String lang);

  Future<bool> writeCurrency(String currency);

  Future<bool> writeTimeFormat(String timeFormat);
}
