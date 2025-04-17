part of 'user_profile_bloc.dart';

@immutable
sealed class UserProfileState extends Equatable {
  @override
  List<Object> get props => [];
}

final class UserProfileInitial extends UserProfileState {}


class UserProfileLoading extends UserProfileState {}

class UserProfileLoaded extends UserProfileState {
  final UserProfileEntity userProfile;

  UserProfileLoaded(this.userProfile);

  @override
  List<Object> get props => [userProfile];
}

class UserProfileUpdated extends UserProfileState {
  final UserProfileEntity updatedUserProfile;

  UserProfileUpdated(this.updatedUserProfile);

  @override
  List<Object> get props => [updatedUserProfile];
}
class UserProfileEditState extends UserProfileState {
  final bool isEditing;

  UserProfileEditState(this.isEditing);

  @override
  List<Object> get props => [isEditing];
}

class UserProfileError extends UserProfileState {
  final String message;

  UserProfileError(this.message);

  @override
  List<Object> get props => [message];
}