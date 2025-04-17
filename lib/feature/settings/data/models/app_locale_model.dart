import 'package:foodappassignment8/feature/settings/domain/entities/app_locale.dart';

class AppLocaleModel extends AppLocale {
  const AppLocaleModel(super.code);

  factory AppLocaleModel.fromJson(String json) => AppLocaleModel(json);
  String toJson() => code;
}