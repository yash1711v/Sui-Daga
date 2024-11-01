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
    int? pincode,
    @JsonKey(name: "landmark")
    @Default("")
    String landmark,
    @JsonKey(name: "area")
    @Default("")
    String area,
    @JsonKey(name: "intrested_dresses")
    @Default([])
    List<dynamic>? intrestedDresses,
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
    @JsonKey(name: "data")
    List<CategoryModel>? categoryModel,
    @JsonKey(name: "upper_banner")
    List<BannerModel>? upperBanner,
    @JsonKey(name: "middle_banner")
    List<BannerModel>? middleBanner,
    @JsonKey(name: "lower_banner")
    List<BannerModel>? lowerBanner
    ,@JsonKey(name: "collection_banner")
    List<BannerModel>? collectionBanner,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, Object?> json)
  => _$ProfileModelFromJson(json);
}

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
  @JsonKey(name:"_id")
  String? id,
  @JsonKey(name:"name")
  String? name,
  @JsonKey(name:"image")
  String? image,
  @JsonKey(name:"description")
  String? description,
  @JsonKey(name:"priority")
  int? priority,
  @JsonKey(name:"status")
  String? status,
  @JsonKey(name:"is_deleted")
  bool? isDeleted,
  @JsonKey(name:"created_at")
  String? createdAt,
  @JsonKey(name:"updated_at")
  String? updatedAt,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, Object?> json)
  => _$CategoryModelFromJson(json);
}

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    @JsonKey(name: '_id') required String id,
    required String image,
    required int priority,
    required String type,
    required String status,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: '__v') required int v,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}