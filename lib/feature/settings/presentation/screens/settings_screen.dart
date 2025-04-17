import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/feature/settings/presentation/bloc/settings_bloc.dart';
import 'package:foodappassignment8/feature/settings/domain/entities/app_locale.dart';
import 'package:foodappassignment8/l10n/app_localizations.dart';
@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  final List<AppLocale> supportedLocales = const [
    AppLocale('en'),
    AppLocale('hi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).settings),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          if (state is SettingsLoaded) {
            final currentLocale = state.locale;

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButton<AppLocale>(
                value: supportedLocales.firstWhere(
                      (locale) => locale.code == currentLocale.code,
                  orElse: () => supportedLocales.first,
                ),
                items: supportedLocales.map((locale) {
                  return DropdownMenuItem<AppLocale>(
                    value: locale,
                    child: Text(locale.code.toUpperCase()),
                  );
                }).toList(),
                onChanged: (newLocale) {
                  if (newLocale != null) {
                    context
                        .read<SettingsBloc>()
                        .add(ChangeLocaleEvent(locale: newLocale));
                  }
                },
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
