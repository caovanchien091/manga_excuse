abstract class CacheRepository {
  Future<bool> writeLang(String lang);

  Future<bool> writeCurrency(String currency);

  Future<bool> writeTimeFormat(String timeFormat);
}
