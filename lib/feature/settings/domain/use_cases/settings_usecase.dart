
import 'package:foodappassignment8/feature/settings/domain/entities/app_locale.dart';
import 'package:foodappassignment8/feature/settings/domain/repositories/settings_repo.dart';

class SettingsUseCase{
  final SettingsRepo repository;

  SettingsUseCase({required this.repository});

  Future<void> setAppLocale(AppLocale? locale) => repository.changeLocale(locale);
  Future<AppLocale?> getAppLocale() => repository.getLocale();
}