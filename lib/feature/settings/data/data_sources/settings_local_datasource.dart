abstract class SettingsLocalDataSource {
  Future<void> setLocale(String code);
  Future<String?> getLocale();
}

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  String? _locale;

  @override
  Future<void> setLocale(String code) async {
    _locale = code;
  }

  @override
  Future<String?> getLocale() async {
    return _locale;
  }
}
