import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_strings.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/core/di/service_locator.dart';
import 'package:foodappassignment8/feature/user_profile/presentation/bloc/user_profile_bloc.dart';
import 'package:foodappassignment8/feature/user_profile/presentation/widgets/text_field_custom.dart';

@RoutePage()
class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<UserProfileBloc>()..add(LoadUserProfile()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.hot.withValues(alpha: 0.8),
          leading: Image.asset(
            AppAssets.arrowLeft,
            color: AppColors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                Icons.settings,
                color: AppColors.white,
                size: 24,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: BlocBuilder<UserProfileBloc, UserProfileState>(
            builder: (context, state) {
              if (state is UserProfileLoaded) {
                return Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: AppColors.hot.withValues(alpha: 0.8),
                    ),


                    Positioned.fill(
                      top: MediaQuery.of(context).size.height*0.1,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),

                        child: ListView(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 74),
                          children: [
                            TextFormFieldWidget(label: AppsStrings.name),
                            const SizedBox(height: 20),
                            TextFormFieldWidget(label: AppsStrings.email),
                            const SizedBox(height: 20),
                            TextFormFieldWidget(label: AppsStrings.address),
                            const SizedBox(height: 20),
                            TextFormFieldWidget(label: AppsStrings.password),
                            const SizedBox(height: 50),
                            Divider(height: 2, color: AppColors.divider),
                            const SizedBox(height: 30),
                            ListTile(
                              title: Text(AppsStrings.paymentDetails,
                                  style: AppTextStyles.paymentTxt),
                              trailing:
                                  const Icon(Icons.arrow_forward_ios, size: 18),
                            ),
                            ListTile(
                              title: Text(AppsStrings.orderHistory,
                                  style: AppTextStyles.paymentTxt),
                              trailing:
                                  const Icon(Icons.arrow_forward_ios, size: 18),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  label: Text(AppsStrings.editProfile,
                                      style: AppTextStyles.editProfile),
                                  iconAlignment: IconAlignment.end,
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 32, vertical: 20),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    backgroundColor: AppColors.title,
                                  ),
                                  icon: Image.asset(AppAssets.edit,
                                      width: 24,
                                      height: 24,
                                      color: AppColors.white),
                                ),
                                OutlinedButton.icon(
                                  onPressed: () {},
                                  iconAlignment: IconAlignment.end,
                                  icon: const Icon(Icons.logout,
                                      color: AppColors.hot, size: 32),
                                  label: Text(AppsStrings.logOut,
                                      style: AppTextStyles.logout),
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 32, vertical: 20),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    side: const BorderSide(
                                        color: AppColors.hot, width: 2),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.height * 0.1,
                        ),
                        child: AspectRatio(
                          aspectRatio: 1, // 1:1 square
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                            child: Image.asset(AppAssets.profile),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
