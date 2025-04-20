import 'package:foodappassignment8/feature/settings/domain/entities/app_locale.dart';

abstract class SettingsRepo{
  Future<void> changeLocale(AppLocale locale);
  Future<AppLocale> getLocale();
}