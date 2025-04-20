import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/l10n/app_localizations.dart';

@RoutePage()
class ProfileDisplayInfoScreen extends StatelessWidget {
  const ProfileDisplayInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context).profile,),
    );
  }
}
