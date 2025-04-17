part of 'user_profile_bloc.dart';

@immutable
sealed class UserProfileEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadUserProfile extends UserProfileEvent {}

class UpdateUserProfile extends UserProfileEvent {
  final UserProfileEntity user;
  UpdateUserProfile(this.user);
  @override
  List<Object> get props => [user];
}
class ClearUserProfileEvent extends UserProfileEvent {}
