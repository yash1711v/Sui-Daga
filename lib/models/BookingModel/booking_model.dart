import 'package:freezed_annotation/freezed_annotation.dart';

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
    required String pincode,
    @JsonKey(name: "landmark")
    required String landmark,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class MeasurementDetail with _$MeasurementDetail {
  const factory MeasurementDetail({
    @JsonKey(name: "categoryId")
    required String categoryId,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "value")
    required String value,
  }) = _MeasurementDetail;

  factory MeasurementDetail.fromJson(Map<String, dynamic> json) => _$MeasurementDetailFromJson(json);
}
