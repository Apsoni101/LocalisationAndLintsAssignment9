

import 'package:foodappassignment8/feature/settings/data/data_sources/settings_local_datasource.dart';
import 'package:foodappassignment8/feature/settings/data/models/app_locale_model.dart';
import 'package:foodappassignment8/feature/settings/domain/entities/app_locale.dart';
import 'package:foodappassignment8/feature/settings/domain/repositories/settings_repo.dart';

class SettingsRepoImpl implements SettingsRepo {
  final SettingsLocalDataSource settingsLocalDataSource;

  SettingsRepoImpl({required this.settingsLocalDataSource});

  @override
  Future<void> changeLocale(AppLocale locale) {
    return settingsLocalDataSource.setLocale(locale.code);
  }

  @override
  Future<AppLocale> getLocale() async {
    final code = await settingsLocalDataSource.getLocale();
    return AppLocaleModel(code ?? 'en');
  }
}
