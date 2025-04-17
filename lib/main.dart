import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/di/service_locator.dart';
import 'package:foodappassignment8/core/navigation/app_router.dart';
import 'package:foodappassignment8/feature/settings/presentation/bloc/settings_bloc.dart';

import 'app_localisation/app_localizations.dart';
import 'feature/user_profile/presentation/bloc/user_profile_bloc.dart';

void main() {
  AppInjector.setupInjector();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AppInjector.injector<SettingsBloc>()..add(LoadSettingsEvent()),
        ),
        BlocProvider(
          create: (context) =>
              AppInjector.injector<UserProfileBloc>()..add(LoadUserProfile()),
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          Locale? locale;
          if (state is SettingsLoaded && state.locale?.code != null) {
            locale = Locale(state.locale!.code!);
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
