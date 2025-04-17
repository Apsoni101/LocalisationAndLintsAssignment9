import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/app_localisation/app_localizations.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_constants.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/feature/settings/presentation/bloc/settings_bloc.dart';
import 'package:foodappassignment8/feature/settings/presentation/widgets/settings_app_bar.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingsAppBar(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.halfLeftBurger),
                Image.asset(AppAssets.halfRightBurger),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.editProfileBg.withValues(alpha: 0.8),
          ),
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              if (state is SettingsLoaded) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.white,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 34),
                    onTap: () {},
                    leading: Icon(Icons.language),
                    title: Text(AppLocalizations.of(context).changeLanguage),
                    subtitle: Row(
                      spacing: 8,
                      children: AppsConstants.supportedLocales.map((locale) {
                        final isSelected = locale.code ==
                            (state.locale?.code ?? 'en'); //ask doubt
                        return ChoiceChip(
                          label: Text(locale.name!.toUpperCase()),
                          selected: isSelected,
                          selectedColor: AppColors.hot,
                          backgroundColor:
                              AppColors.labelTxt.withValues(alpha: 0.4),
                          labelStyle: AppTextStyles.textFieldStyle.copyWith(
                              color: isSelected
                                  ? AppColors.white
                                  : AppColors.black),
                          onSelected: (value) {
                            context
                                .read<SettingsBloc>()
                                .add(ChangeLocaleEvent(locale: locale));
                          },
                        );
                      }).toList(),
                    ),
                  ),
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
