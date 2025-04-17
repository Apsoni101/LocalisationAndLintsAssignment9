part of 'settings_bloc.dart';

@immutable
sealed class SettingsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class LoadSettingsEvent extends SettingsEvent{

}
final class ChangeLocaleEvent extends SettingsEvent{
  final AppLocale? locale;
  ChangeLocaleEvent({required this.locale});
  @override
  List<Object?> get props => [locale];
}
