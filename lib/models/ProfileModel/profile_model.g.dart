// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      newUser: json['new_user'] as bool? ?? true,
      pincode: (json['pincode'] as num?)?.toInt(),
      landmark: json['landmark'] as String? ?? "",
      area: json['area'] as String? ?? "",
      intrestedDresses: json['intrested_dresses'] as List<dynamic>? ?? const [],
      orderFrequency: json['order_frequency'] as String? ?? "",
      name: json['name'] as String? ?? "User",
      number: (json['phone_number'] as num?)?.toInt() ?? 91,
      profileImage:
          json['profile_image'] ?? "assets/Images/dummyProfileImage.png",
      address: json['address'] as String? ??
          "Lorem ipsum dolor sit amet, consr adipiscing elit. Sed do eiusmod",
      categoryModel: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'data': instance.categoryModel,
    };

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      status: json['status'] as String?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'priority': instance.priority,
      'status': instance.status,
      'is_deleted': instance.isDeleted,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
