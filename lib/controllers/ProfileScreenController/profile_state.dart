import 'package:equatable/equatable.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';

class ProfileState extends Equatable {
  final ProfileModel? profileModel;

  const ProfileState({
    this.profileModel = const ProfileModel(),
  });

  ProfileState copyWith({
    ProfileModel? profileModel,
  }) {
    return ProfileState(
      profileModel: profileModel ?? this.profileModel,
    );
  }

  @override
  List<Object?> get props => [
    profileModel,
  ];
}
