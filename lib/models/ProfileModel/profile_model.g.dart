// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      newUser: json['new_user'] as bool? ?? true,
      pincode: json['pincode'] as String? ?? "",
      landmark: json['landmark'] as String? ?? "",
      area: json['area'] as String? ?? "",
      intrestedDresses: (json['intrested_dresses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      orderFrequency: json['order_frequency'] as String? ?? "",
      name: json['name'] as String? ?? "User",
      number: (json['phone_number'] as num?)?.toInt() ?? 91,
      profileImage:
          json['profile_image'] ?? "assets/Images/dummyProfileImage.png",
      address: json['address'] as String? ??
          "Lorem ipsum dolor sit amet, consr adipiscing elit. Sed do eiusmod",
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'new_user': instance.newUser,
      'pincode': instance.pincode,
      'landmark': instance.landmark,
      'area': instance.area,
      'intrested_dresses': instance.intrestedDresses,
      'order_frequency': instance.orderFrequency,
      'name': instance.name,
      'phone_number': instance.number,
      'profile_image': instance.profileImage,
      'address': instance.address,
    };
