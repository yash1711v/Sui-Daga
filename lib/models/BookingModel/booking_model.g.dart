// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      categoryId: json['category_id'] as String?,
      ready_by_date: json['ready_by_date'] as String?,
      type: json['type'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      note: json['note'] as String?,
      measurementUnit: json['measurement_unit'] as String?,
      measurementDetails: (json['measurement_details'] as List<dynamic>?)
          ?.map((e) => MeasurementDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'ready_by_date': instance.ready_by_date,
      'type': instance.type,
      'address': instance.address,
      'note': instance.note,
      'measurement_unit': instance.measurementUnit,
      'measurement_details': instance.measurementDetails,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      houseAddress: json['house_address'] as String,
      area: json['area'] as String,
      pincode: json['pincode'],
      landmark: json['landmark'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'house_address': instance.houseAddress,
      'area': instance.area,
      'pincode': instance.pincode,
      'landmark': instance.landmark,
    };

_$MeasurementDetailImpl _$$MeasurementDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$MeasurementDetailImpl(
      categoryId: json['categoryId'] as String,
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$MeasurementDetailImplToJson(
        _$MeasurementDetailImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
      'value': instance.value,
    };

_$PreviousBookingImpl _$$PreviousBookingImplFromJson(
        Map<String, dynamic> json) =>
    _$PreviousBookingImpl(
      id: json['_id'] as String?,
      userId: json['user_id'] as String?,
      categoryId: json['category_id'] as String?,
      type: json['type'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      measurementUnit: json['measurement_unit'] as String?,
      measurementDetails: (json['measurement_details'] as List<dynamic>?)
          ?.map((e) => MeasurementDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      readyByDate: json['ready_by_date'] == null
          ? null
          : DateTime.parse(json['ready_by_date'] as String),
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      status: json['status'] as String,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      v: (json['__v'] as num?)?.toInt(),
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreviousBookingImplToJson(
        _$PreviousBookingImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'type': instance.type,
      'address': instance.address,
      'measurement_unit': instance.measurementUnit,
      'measurement_details': instance.measurementDetails,
      'ready_by_date': instance.readyByDate?.toIso8601String(),
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'status': instance.status,
      'is_deleted': instance.isDeleted,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'category': instance.category,
    };
