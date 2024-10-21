import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_model.freezed.dart';

part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: "new_user")
    @Default(true)
    bool newUser,
    @JsonKey(name: "pincode")
    @Default("")
    String pincode,
    @JsonKey(name: "landmark")
    @Default("")
    String landmark,
    @JsonKey(name: "area")
    @Default("")
    String area,
    @JsonKey(name: "intrested_dresses")
    @Default([])
    List<String>? intrestedDresses,
    @JsonKey(name: "order_frequency")
    @Default("")
    String? orderFrequency,
    @JsonKey(name: "name")
    @Default("User")
    String name,
    @JsonKey(name: "phone_number")
    @Default(91)
    int number,
    @JsonKey(name: "profile_image")
    @Default("assets/Images/dummyProfileImage.png")
    dynamic profileImage,
    @JsonKey(name: "address")
    @Default("Lorem ipsum dolor sit amet, consr adipiscing elit. Sed do eiusmod")
    String address,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, Object?> json)
  => _$ProfileModelFromJson(json);
}