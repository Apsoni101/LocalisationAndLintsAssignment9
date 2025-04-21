part of 'user_profile_bloc.dart';

@immutable
sealed class UserProfileState extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

final class UserProfileInitial extends UserProfileState {}


class UserProfileLoading extends UserProfileState {}

class UserProfileLoaded extends UserProfileState {

  UserProfileLoaded(this.userProfile);
  final UserProfileEntity userProfile;

  @override
  List<Object> get props => <Object>[userProfile];
}

class UserProfileUpdated extends UserProfileState {

  UserProfileUpdated(this.updatedUserProfile);
  final UserProfileEntity updatedUserProfile;

  @override
  List<Object> get props => <Object>[updatedUserProfile];
}
class UserProfileEditState extends UserProfileState {

  UserProfileEditState({required this.isEditing});
  final bool isEditing;

  @override
  List<Object> get props => <Object>[isEditing];
}
class UserProfileEditState extends UserProfileState {
  final bool isEditing;

  UserProfileEditState(this.isEditing);

  @override
  List<Object> get props => [isEditing];
}

class UserProfileError extends UserProfileState {

  UserProfileError(this.message);
  final String message;

  @override
  List<Object> get props => <Object>[message];
}