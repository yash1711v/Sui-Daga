import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ProfileModel/profile_model.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
     @JsonKey(name: "category_id")
     String? categoryId,
    @JsonKey(name: "ready_by_date")
     String? ready_by_date,
    @JsonKey(name: "type")
     String? type,
    @JsonKey(name: "address")
     Address? address,
    @JsonKey(name: "note")
     String? note,
    @JsonKey(name: "measurement_unit")
     String? measurementUnit,
    @JsonKey(name: "measurement_details")
     List<MeasurementDetail>? measurementDetails,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: "house_address")
    required String houseAddress,
    @JsonKey(name: "area")
    required String area,
    @JsonKey(name: "pincode")
    required dynamic pincode,
    @JsonKey(name: "landmark")
    required String landmark,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class MeasurementDetail with _$MeasurementDetail {
  const factory MeasurementDetail({
    @JsonKey(name: "categoryId") required String categoryId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "value") required String value,
  }) = _MeasurementDetail;

  factory MeasurementDetail.fromJson(Map<String, dynamic> json) =>
      _$MeasurementDetailFromJson(json);

}

@freezed
class PreviousBooking with _$PreviousBooking {
  const factory PreviousBooking({
    @JsonKey(name: '_id')  String? id,
    @JsonKey(name: 'user_id')  String? userId,
    @JsonKey(name: 'category_id')  String? categoryId,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'address') Address? address,
    @JsonKey(name: 'measurement_unit')  String? measurementUnit,
    @JsonKey(name: 'measurement_details')  List<MeasurementDetail>? measurementDetails,
    @JsonKey(name: 'ready_by_date')  DateTime? readyByDate,
    @JsonKey(name: 'delivery_date') DateTime? deliveryDate,
    required String status,
    @JsonKey(name: 'is_deleted')  bool? isDeleted,
    @JsonKey(name: 'created_at')  DateTime? createdAt,
    @JsonKey(name: 'updated_at')  DateTime? updatedAt,
    @JsonKey(name: '__v')  int? v,
    @JsonKey(name: 'category') CategoryModel? category,
  }) = _PreviousBooking;

  factory PreviousBooking.fromJson(Map<String, dynamic> json) => _$PreviousBookingFromJson(json);
}

