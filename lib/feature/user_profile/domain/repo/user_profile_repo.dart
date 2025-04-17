

import 'package:foodappassignment8/feature/user_profile/domain/entity/user_profile.dart';

abstract class UserProfileRepo {
  UserProfileEntity getUser();
  void updateUser(UserProfileEntity user);
  void clearUserProfile();
}
