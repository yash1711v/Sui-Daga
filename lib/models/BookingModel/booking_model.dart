import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
     String? categoryId,
     String? ready_by_date,
     String? type,
     Address? address,
     String? measurementUnit,
     List<MeasurementDetail>? measurementDetails,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required String houseAddress,
    required String area,
    required String pincode,
    required String landmark,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class MeasurementDetail with _$MeasurementDetail {
  const factory MeasurementDetail({
    required String categoryId,
    required String name,
    required String value,
  }) = _MeasurementDetail;

  factory MeasurementDetail.fromJson(Map<String, dynamic> json) => _$MeasurementDetailFromJson(json);
}
