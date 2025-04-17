part of 'settings_bloc.dart';

@immutable
sealed class SettingsState extends Equatable{
  @override
  List<Object?> get props => [];

}

final class SettingsInitial extends SettingsState {}
final class SettingsLoaded extends SettingsState {
  final AppLocale? locale;

  SettingsLoaded({required this.locale});
  @override
  List<Object?> get props => [locale];

}
