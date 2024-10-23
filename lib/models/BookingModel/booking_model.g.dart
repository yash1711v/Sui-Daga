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
      'measurement_unit': instance.measurementUnit,
      'measurement_details': instance.measurementDetails,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      houseAddress: json['house_address'] as String,
      area: json['area'] as String,
      pincode: json['pincode'] as String,
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
