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
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
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
      @JsonKey(name: "note") String? note,
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
    Object? note = freezed,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "note") String? note,
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
    Object? note = freezed,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$BookingImpl with DiagnosticableTreeMixin implements _Booking {
  const _$BookingImpl(
      {@JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "ready_by_date") this.ready_by_date,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "note") this.note,
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
  @JsonKey(name: "note")
  final String? note;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Booking(categoryId: $categoryId, ready_by_date: $ready_by_date, type: $type, address: $address, note: $note, measurementUnit: $measurementUnit, measurementDetails: $measurementDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Booking'))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('ready_by_date', ready_by_date))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('measurementUnit', measurementUnit))
      ..add(DiagnosticsProperty('measurementDetails', measurementDetails));
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
            (identical(other.note, note) || other.note == note) &&
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
      note,
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
      @JsonKey(name: "note") final String? note,
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
  @JsonKey(name: "note")
  String? get note;
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
  dynamic get pincode => throw _privateConstructorUsedError;
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
      @JsonKey(name: "pincode") dynamic pincode,
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
    Object? pincode = freezed,
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
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      @JsonKey(name: "pincode") dynamic pincode,
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
    Object? pincode = freezed,
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
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl with DiagnosticableTreeMixin implements _Address {
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
  final dynamic pincode;
  @override
  @JsonKey(name: "landmark")
  final String landmark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Address(houseAddress: $houseAddress, area: $area, pincode: $pincode, landmark: $landmark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Address'))
      ..add(DiagnosticsProperty('houseAddress', houseAddress))
      ..add(DiagnosticsProperty('area', area))
      ..add(DiagnosticsProperty('pincode', pincode))
      ..add(DiagnosticsProperty('landmark', landmark));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.houseAddress, houseAddress) ||
                other.houseAddress == houseAddress) &&
            (identical(other.area, area) || other.area == area) &&
            const DeepCollectionEquality().equals(other.pincode, pincode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, houseAddress, area,
      const DeepCollectionEquality().hash(pincode), landmark);

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
          @JsonKey(name: "pincode") required final dynamic pincode,
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
  dynamic get pincode;
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
class _$MeasurementDetailImpl
    with DiagnosticableTreeMixin
    implements _MeasurementDetail {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeasurementDetail(categoryId: $categoryId, name: $name, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeasurementDetail'))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('value', value));
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

PreviousBooking _$PreviousBookingFromJson(Map<String, dynamic> json) {
  return _PreviousBooking.fromJson(json);
}

/// @nodoc
mixin _$PreviousBooking {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_unit')
  String? get measurementUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_details')
  List<MeasurementDetail>? get measurementDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'ready_by_date')
  DateTime? get readyByDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_date')
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;

  /// Serializes this PreviousBooking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreviousBooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviousBookingCopyWith<PreviousBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousBookingCopyWith<$Res> {
  factory $PreviousBookingCopyWith(
          PreviousBooking value, $Res Function(PreviousBooking) then) =
      _$PreviousBookingCopyWithImpl<$Res, PreviousBooking>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'address') Address? address,
      @JsonKey(name: 'measurement_unit') String? measurementUnit,
      @JsonKey(name: 'measurement_details')
      List<MeasurementDetail>? measurementDetails,
      @JsonKey(name: 'ready_by_date') DateTime? readyByDate,
      @JsonKey(name: 'delivery_date') DateTime? deliveryDate,
      String status,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'category') CategoryModel? category});

  $AddressCopyWith<$Res>? get address;
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$PreviousBookingCopyWithImpl<$Res, $Val extends PreviousBooking>
    implements $PreviousBookingCopyWith<$Res> {
  _$PreviousBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviousBooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? type = freezed,
    Object? address = freezed,
    Object? measurementUnit = freezed,
    Object? measurementDetails = freezed,
    Object? readyByDate = freezed,
    Object? deliveryDate = freezed,
    Object? status = null,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
      readyByDate: freezed == readyByDate
          ? _value.readyByDate
          : readyByDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ) as $Val);
  }

  /// Create a copy of PreviousBooking
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

  /// Create a copy of PreviousBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreviousBookingImplCopyWith<$Res>
    implements $PreviousBookingCopyWith<$Res> {
  factory _$$PreviousBookingImplCopyWith(_$PreviousBookingImpl value,
          $Res Function(_$PreviousBookingImpl) then) =
      __$$PreviousBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'address') Address? address,
      @JsonKey(name: 'measurement_unit') String? measurementUnit,
      @JsonKey(name: 'measurement_details')
      List<MeasurementDetail>? measurementDetails,
      @JsonKey(name: 'ready_by_date') DateTime? readyByDate,
      @JsonKey(name: 'delivery_date') DateTime? deliveryDate,
      String status,
      @JsonKey(name: 'is_deleted') bool? isDeleted,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: '__v') int? v,
      @JsonKey(name: 'category') CategoryModel? category});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$PreviousBookingImplCopyWithImpl<$Res>
    extends _$PreviousBookingCopyWithImpl<$Res, _$PreviousBookingImpl>
    implements _$$PreviousBookingImplCopyWith<$Res> {
  __$$PreviousBookingImplCopyWithImpl(
      _$PreviousBookingImpl _value, $Res Function(_$PreviousBookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviousBooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? type = freezed,
    Object? address = freezed,
    Object? measurementUnit = freezed,
    Object? measurementDetails = freezed,
    Object? readyByDate = freezed,
    Object? deliveryDate = freezed,
    Object? status = null,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? category = freezed,
  }) {
    return _then(_$PreviousBookingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
      readyByDate: freezed == readyByDate
          ? _value.readyByDate
          : readyByDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviousBookingImpl
    with DiagnosticableTreeMixin
    implements _PreviousBooking {
  const _$PreviousBookingImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'measurement_unit') this.measurementUnit,
      @JsonKey(name: 'measurement_details')
      final List<MeasurementDetail>? measurementDetails,
      @JsonKey(name: 'ready_by_date') this.readyByDate,
      @JsonKey(name: 'delivery_date') this.deliveryDate,
      required this.status,
      @JsonKey(name: 'is_deleted') this.isDeleted,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: '__v') this.v,
      @JsonKey(name: 'category') this.category})
      : _measurementDetails = measurementDetails;

  factory _$PreviousBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviousBookingImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'address')
  final Address? address;
  @override
  @JsonKey(name: 'measurement_unit')
  final String? measurementUnit;
  final List<MeasurementDetail>? _measurementDetails;
  @override
  @JsonKey(name: 'measurement_details')
  List<MeasurementDetail>? get measurementDetails {
    final value = _measurementDetails;
    if (value == null) return null;
    if (_measurementDetails is EqualUnmodifiableListView)
      return _measurementDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'ready_by_date')
  final DateTime? readyByDate;
  @override
  @JsonKey(name: 'delivery_date')
  final DateTime? deliveryDate;
  @override
  final String status;
  @override
  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  @JsonKey(name: 'category')
  final CategoryModel? category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviousBooking(id: $id, userId: $userId, categoryId: $categoryId, type: $type, address: $address, measurementUnit: $measurementUnit, measurementDetails: $measurementDetails, readyByDate: $readyByDate, deliveryDate: $deliveryDate, status: $status, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreviousBooking'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('measurementUnit', measurementUnit))
      ..add(DiagnosticsProperty('measurementDetails', measurementDetails))
      ..add(DiagnosticsProperty('readyByDate', readyByDate))
      ..add(DiagnosticsProperty('deliveryDate', deliveryDate))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('v', v))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviousBookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.measurementUnit, measurementUnit) ||
                other.measurementUnit == measurementUnit) &&
            const DeepCollectionEquality()
                .equals(other._measurementDetails, _measurementDetails) &&
            (identical(other.readyByDate, readyByDate) ||
                other.readyByDate == readyByDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      categoryId,
      type,
      address,
      measurementUnit,
      const DeepCollectionEquality().hash(_measurementDetails),
      readyByDate,
      deliveryDate,
      status,
      isDeleted,
      createdAt,
      updatedAt,
      v,
      category);

  /// Create a copy of PreviousBooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviousBookingImplCopyWith<_$PreviousBookingImpl> get copyWith =>
      __$$PreviousBookingImplCopyWithImpl<_$PreviousBookingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviousBookingImplToJson(
      this,
    );
  }
}

abstract class _PreviousBooking implements PreviousBooking {
  const factory _PreviousBooking(
          {@JsonKey(name: '_id') final String? id,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'category_id') final String? categoryId,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'address') final Address? address,
          @JsonKey(name: 'measurement_unit') final String? measurementUnit,
          @JsonKey(name: 'measurement_details')
          final List<MeasurementDetail>? measurementDetails,
          @JsonKey(name: 'ready_by_date') final DateTime? readyByDate,
          @JsonKey(name: 'delivery_date') final DateTime? deliveryDate,
          required final String status,
          @JsonKey(name: 'is_deleted') final bool? isDeleted,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: '__v') final int? v,
          @JsonKey(name: 'category') final CategoryModel? category}) =
      _$PreviousBookingImpl;

  factory _PreviousBooking.fromJson(Map<String, dynamic> json) =
      _$PreviousBookingImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'address')
  Address? get address;
  @override
  @JsonKey(name: 'measurement_unit')
  String? get measurementUnit;
  @override
  @JsonKey(name: 'measurement_details')
  List<MeasurementDetail>? get measurementDetails;
  @override
  @JsonKey(name: 'ready_by_date')
  DateTime? get readyByDate;
  @override
  @JsonKey(name: 'delivery_date')
  DateTime? get deliveryDate;
  @override
  String get status;
  @override
  @JsonKey(name: 'is_deleted')
  bool? get isDeleted;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  @JsonKey(name: 'category')
  CategoryModel? get category;

  /// Create a copy of PreviousBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviousBookingImplCopyWith<_$PreviousBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
