// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      name: json['name'] as String? ?? "User",
      number: json['number'] as String? ?? "+91 997XXXXXXX",
      profileImage:
          json['profileImage'] ?? "assets/Images/dummyProfileImage.png",
      address: json['address'] as String? ??
          "Lorem ipsum dolor sit amet, consr adipiscing elit. Sed do eiusmod",
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'profileImage': instance.profileImage,
      'address': instance.address,
    };
