part of 'user_measure_ment_cubit.dart';

final class UserMeasureMentState extends Equatable {
  final List<String>? measureMentItems;
  final List<String>? selectedMeasureMentItems;
  List<Map<String, String>>? measurementData;
  ProfileModel? profileData;
  final String? measurementUnit;
  final String? image;

  UserMeasureMentState(
      {this.measureMentItems,
      this.selectedMeasureMentItems = const ["Kurta"],
      this.measurementData,
      this.profileData,
      this.measurementUnit = "CM",
      this.image
      });

  UserMeasureMentState copyWith(
      {List<String>? measureMentItems,
      List<String>? selectedMeasureMentItems,
      List<Map<String, String>>? measurementData,
      ProfileModel? profileData,
      String? measurementUnit,
      String? image}) {
    return UserMeasureMentState(
      measureMentItems: measureMentItems ?? this.measureMentItems,
      selectedMeasureMentItems:
          selectedMeasureMentItems ?? this.selectedMeasureMentItems,
      measurementData: measurementData ?? this.measurementData,
      profileData: profileData ?? this.profileData,
      measurementUnit: measurementUnit ?? this.measurementUnit,
      image: image ?? this.image
    );
  }

  @override
  List<Object?> get props => [
        measureMentItems,
        selectedMeasureMentItems,
        measurementData,
        profileData,
        measurementUnit,
        image
      ];
}
