import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_model.freezed.dart';

part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @Default("User")
    String name,
    @Default("+91 997XXXXXXX")
    String number,
    @Default("assets/Images/dummyProfileImage.png")
    dynamic profileImage,
    @Default("Lorem ipsum dolor sit amet, consr adipiscing elit. Sed do eiusmod")
    String address,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, Object?> json)
  => _$ProfileModelFromJson(json);
}