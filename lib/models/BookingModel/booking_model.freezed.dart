// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  @JsonKey(name: "category_id")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "ready_by_date")
  String? get ready_by_date => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "measurement_unit")
  String? get measurementUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "measurement_details")
  List<MeasurementDetail>? get measurementDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {@JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "ready_by_date") String? ready_by_date,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "address") Address? address,
      @JsonKey(name: "measurement_unit") String? measurementUnit,
      @JsonKey(name: "measurement_details")
      List<MeasurementDetail>? measurementDetails});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? ready_by_date = freezed,
    Object? type = freezed,
    Object? address = freezed,
    Object? measurementUnit = freezed,
    Object? measurementDetails = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      ready_by_date: freezed == ready_by_date
          ? _value.ready_by_date
          : ready_by_date // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      measurementUnit: freezed == measurementUnit
          ? _value.measurementUnit
          : measurementUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementDetails: freezed == measurementDetails
          ? _value.measurementDetails
          : measurementDetails // ignore: cast_nullable_to_non_nullable
              as List<MeasurementDetail>?,
    ) as $Val);
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "ready_by_date") String? ready_by_date,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "address") Address? address,
      @JsonKey(name: "measurement_unit") String? measurementUnit,
      @JsonKey(name: "measurement_details")
      List<MeasurementDetail>? measurementDetails});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? ready_by_date = freezed,
    Object? type = freezed,
    Object? address = freezed,
    Object? measurementUnit = freezed,
    Object? measurementDetails = freezed,
  }) {
    return _then(_$BookingImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      ready_by_date: freezed == ready_by_date
          ? _value.ready_by_date
          : ready_by_date // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      measurementUnit: freezed == measurementUnit
          ? _value.measurementUnit
          : measurementUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementDetails: freezed == measurementDetails
          ? _value._measurementDetails
          : measurementDetails // ignore: cast_nullable_to_non_nullable
              as List<MeasurementDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {@JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "ready_by_date") this.ready_by_date,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "measurement_unit") this.measurementUnit,
      @JsonKey(name: "measurement_details")
      final List<MeasurementDetail>? measurementDetails})
      : _measurementDetails = measurementDetails;

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  @JsonKey(name: "category_id")
  final String? categoryId;
  @override
  @JsonKey(name: "ready_by_date")
  final String? ready_by_date;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "address")
  final Address? address;
  @override
  @JsonKey(name: "measurement_unit")
  final String? measurementUnit;
  final List<MeasurementDetail>? _measurementDetails;
  @override
  @JsonKey(name: "measurement_details")
  List<MeasurementDetail>? get measurementDetails {
    final value = _measurementDetails;
    if (value == null) return null;
    if (_measurementDetails is EqualUnmodifiableListView)
      return _measurementDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Booking(categoryId: $categoryId, ready_by_date: $ready_by_date, type: $type, address: $address, measurementUnit: $measurementUnit, measurementDetails: $measurementDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.ready_by_date, ready_by_date) ||
                other.ready_by_date == ready_by_date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.measurementUnit, measurementUnit) ||
                other.measurementUnit == measurementUnit) &&
            const DeepCollectionEquality()
                .equals(other._measurementDetails, _measurementDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryId,
      ready_by_date,
      type,
      address,
      measurementUnit,
      const DeepCollectionEquality().hash(_measurementDetails));

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {@JsonKey(name: "category_id") final String? categoryId,
      @JsonKey(name: "ready_by_date") final String? ready_by_date,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "address") final Address? address,
      @JsonKey(name: "measurement_unit") final String? measurementUnit,
      @JsonKey(name: "measurement_details")
      final List<MeasurementDetail>? measurementDetails}) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  @JsonKey(name: "category_id")
  String? get categoryId;
  @override
  @JsonKey(name: "ready_by_date")
  String? get ready_by_date;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "address")
  Address? get address;
  @override
  @JsonKey(name: "measurement_unit")
  String? get measurementUnit;
  @override
  @JsonKey(name: "measurement_details")
  List<MeasurementDetail>? get measurementDetails;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: "house_address")
  String get houseAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "area")
  String get area => throw _privateConstructorUsedError;
  @JsonKey(name: "pincode")
  String get pincode => throw _privateConstructorUsedError;
  @JsonKey(name: "landmark")
  String get landmark => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: "house_address") String houseAddress,
      @JsonKey(name: "area") String area,
      @JsonKey(name: "pincode") String pincode,
      @JsonKey(name: "landmark") String landmark});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseAddress = null,
    Object? area = null,
    Object? pincode = null,
    Object? landmark = null,
  }) {
    return _then(_value.copyWith(
      houseAddress: null == houseAddress
          ? _value.houseAddress
          : houseAddress // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "house_address") String houseAddress,
      @JsonKey(name: "area") String area,
      @JsonKey(name: "pincode") String pincode,
      @JsonKey(name: "landmark") String landmark});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseAddress = null,
    Object? area = null,
    Object? pincode = null,
    Object? landmark = null,
  }) {
    return _then(_$AddressImpl(
      houseAddress: null == houseAddress
          ? _value.houseAddress
          : houseAddress // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: "house_address") required this.houseAddress,
      @JsonKey(name: "area") required this.area,
      @JsonKey(name: "pincode") required this.pincode,
      @JsonKey(name: "landmark") required this.landmark});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: "house_address")
  final String houseAddress;
  @override
  @JsonKey(name: "area")
  final String area;
  @override
  @JsonKey(name: "pincode")
  final String pincode;
  @override
  @JsonKey(name: "landmark")
  final String landmark;

  @override
  String toString() {
    return 'Address(houseAddress: $houseAddress, area: $area, pincode: $pincode, landmark: $landmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.houseAddress, houseAddress) ||
                other.houseAddress == houseAddress) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, houseAddress, area, pincode, landmark);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
          {@JsonKey(name: "house_address") required final String houseAddress,
          @JsonKey(name: "area") required final String area,
          @JsonKey(name: "pincode") required final String pincode,
          @JsonKey(name: "landmark") required final String landmark}) =
      _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: "house_address")
  String get houseAddress;
  @override
  @JsonKey(name: "area")
  String get area;
  @override
  @JsonKey(name: "pincode")
  String get pincode;
  @override
  @JsonKey(name: "landmark")
  String get landmark;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeasurementDetail _$MeasurementDetailFromJson(Map<String, dynamic> json) {
  return _MeasurementDetail.fromJson(json);
}

/// @nodoc
mixin _$MeasurementDetail {
  @JsonKey(name: "categoryId")
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String get value => throw _privateConstructorUsedError;

  /// Serializes this MeasurementDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeasurementDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasurementDetailCopyWith<MeasurementDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementDetailCopyWith<$Res> {
  factory $MeasurementDetailCopyWith(
          MeasurementDetail value, $Res Function(MeasurementDetail) then) =
      _$MeasurementDetailCopyWithImpl<$Res, MeasurementDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "value") String value});
}

/// @nodoc
class _$MeasurementDetailCopyWithImpl<$Res, $Val extends MeasurementDetail>
    implements $MeasurementDetailCopyWith<$Res> {
  _$MeasurementDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasurementDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeasurementDetailImplCopyWith<$Res>
    implements $MeasurementDetailCopyWith<$Res> {
  factory _$$MeasurementDetailImplCopyWith(_$MeasurementDetailImpl value,
          $Res Function(_$MeasurementDetailImpl) then) =
      __$$MeasurementDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "value") String value});
}

/// @nodoc
class __$$MeasurementDetailImplCopyWithImpl<$Res>
    extends _$MeasurementDetailCopyWithImpl<$Res, _$MeasurementDetailImpl>
    implements _$$MeasurementDetailImplCopyWith<$Res> {
  __$$MeasurementDetailImplCopyWithImpl(_$MeasurementDetailImpl _value,
      $Res Function(_$MeasurementDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeasurementDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$MeasurementDetailImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementDetailImpl implements _MeasurementDetail {
  const _$MeasurementDetailImpl(
      {@JsonKey(name: "categoryId") required this.categoryId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "value") required this.value});

  factory _$MeasurementDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasurementDetailImplFromJson(json);

  @override
  @JsonKey(name: "categoryId")
  final String categoryId;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "value")
  final String value;

  @override
  String toString() {
    return 'MeasurementDetail(categoryId: $categoryId, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementDetailImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, name, value);

  /// Create a copy of MeasurementDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementDetailImplCopyWith<_$MeasurementDetailImpl> get copyWith =>
      __$$MeasurementDetailImplCopyWithImpl<_$MeasurementDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementDetailImplToJson(
      this,
    );
  }
}

abstract class _MeasurementDetail implements MeasurementDetail {
  const factory _MeasurementDetail(
          {@JsonKey(name: "categoryId") required final String categoryId,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "value") required final String value}) =
      _$MeasurementDetailImpl;

  factory _MeasurementDetail.fromJson(Map<String, dynamic> json) =
      _$MeasurementDetailImpl.fromJson;

  @override
  @JsonKey(name: "categoryId")
  String get categoryId;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "value")
  String get value;

  /// Create a copy of MeasurementDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasurementDetailImplCopyWith<_$MeasurementDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
