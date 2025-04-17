import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/app_localisation/app_localizations.dart';
@RoutePage()
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(AppLocalizations.of(context).wishlist),);
  }
}
