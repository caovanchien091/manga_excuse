import 'package:common/common.dart';

class EnvDefault extends EnvData {
  @override
  String get defaultCurrency => 'VND';

  @override
  String get defaultLang => 'vi';

  @override
  String get defaultTimeFormat => 'dd/MM/yyyy';

  @override
  bool get isCheckNetwork => true;

  @override
  bool get isLogger => true;
}
