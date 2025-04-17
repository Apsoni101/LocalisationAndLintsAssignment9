import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_strings.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
@RoutePage()
class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppsStrings.comments,),
    );
  }
}
