import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/di/service_locator.dart';
import 'package:foodappassignment8/core/navigation/app_router.dart';
import 'package:foodappassignment8/feature/settings/presentation/bloc/settings_bloc.dart';

import 'l10n/app_localizations.dart';

void main() {
  AppInjector.setupInjector();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
   MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      AppInjector.injector<SettingsBloc>()..add(LoadSettingsEvent()),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          Locale? locale;
          if (state is SettingsLoaded) {
            locale = Locale(state.locale.code);
          }

          return MaterialApp.router(
            theme: ThemeData(
              primaryColor: AppColors.white,
              scaffoldBackgroundColor: AppColors.white,
              appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.white,
                surfaceTintColor: Colors.transparent,
              ),
            ),
            locale: locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}

