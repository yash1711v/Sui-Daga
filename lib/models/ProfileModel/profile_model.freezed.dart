// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  @JsonKey(name: "new_user")
  bool get newUser => throw _privateConstructorUsedError;
  @JsonKey(name: "pincode")
  String get pincode => throw _privateConstructorUsedError;
  @JsonKey(name: "landmark")
  String get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: "area")
  String get area => throw _privateConstructorUsedError;
  @JsonKey(name: "intrested_dresses")
  List<String>? get intrestedDresses => throw _privateConstructorUsedError;
  @JsonKey(name: "order_frequency")
  String? get orderFrequency => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_image")
  dynamic get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "new_user") bool newUser,
      @JsonKey(name: "pincode") String pincode,
      @JsonKey(name: "landmark") String landmark,
      @JsonKey(name: "area") String area,
      @JsonKey(name: "intrested_dresses") List<String>? intrestedDresses,
      @JsonKey(name: "order_frequency") String? orderFrequency,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone_number") int number,
      @JsonKey(name: "profile_image") dynamic profileImage,
      @JsonKey(name: "address") String address});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newUser = null,
    Object? pincode = null,
    Object? landmark = null,
    Object? area = null,
    Object? intrestedDresses = freezed,
    Object? orderFrequency = freezed,
    Object? name = null,
    Object? number = null,
    Object? profileImage = freezed,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      newUser: null == newUser
          ? _value.newUser
          : newUser // ignore: cast_nullable_to_non_nullable
              as bool,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      intrestedDresses: freezed == intrestedDresses
          ? _value.intrestedDresses
          : intrestedDresses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orderFrequency: freezed == orderFrequency
          ? _value.orderFrequency
          : orderFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "new_user") bool newUser,
      @JsonKey(name: "pincode") String pincode,
      @JsonKey(name: "landmark") String landmark,
      @JsonKey(name: "area") String area,
      @JsonKey(name: "intrested_dresses") List<String>? intrestedDresses,
      @JsonKey(name: "order_frequency") String? orderFrequency,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone_number") int number,
      @JsonKey(name: "profile_image") dynamic profileImage,
      @JsonKey(name: "address") String address});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newUser = null,
    Object? pincode = null,
    Object? landmark = null,
    Object? area = null,
    Object? intrestedDresses = freezed,
    Object? orderFrequency = freezed,
    Object? name = null,
    Object? number = null,
    Object? profileImage = freezed,
    Object? address = null,
  }) {
    return _then(_$ProfileModelImpl(
      newUser: null == newUser
          ? _value.newUser
          : newUser // ignore: cast_nullable_to_non_nullable
              as bool,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      intrestedDresses: freezed == intrestedDresses
          ? _value._intrestedDresses
          : intrestedDresses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orderFrequency: freezed == orderFrequency
          ? _value.orderFrequency
          : orderFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl with DiagnosticableTreeMixin implements _ProfileModel {
  const _$ProfileModelImpl(
      {@JsonKey(name: "new_user") this.newUser = true,
      @JsonKey(name: "pincode") this.pincode = "",
      @JsonKey(name: "landmark") this.landmark = "",
      @JsonKey(name: "area") this.area = "",
      @JsonKey(name: "intrested_dresses")
      final List<String>? intrestedDresses = const [],
      @JsonKey(name: "order_frequency") this.orderFrequency = "",
      @JsonKey(name: "name") this.name = "User",
      @JsonKey(name: "phone_number") this.number = 91,
      @JsonKey(name: "profile_image")
      this.profileImage = "assets/Images/dummyProfileImage.png",
      @JsonKey(name: "address") this.address =
          "Lorem ipsum dolor sit amet, consr adipiscing elit. Sed do eiusmod"})
      : _intrestedDresses = intrestedDresses;

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "new_user")
  final bool newUser;
  @override
  @JsonKey(name: "pincode")
  final String pincode;
  @override
  @JsonKey(name: "landmark")
  final String landmark;
  @override
  @JsonKey(name: "area")
  final String area;
  final List<String>? _intrestedDresses;
  @override
  @JsonKey(name: "intrested_dresses")
  List<String>? get intrestedDresses {
    final value = _intrestedDresses;
    if (value == null) return null;
    if (_intrestedDresses is EqualUnmodifiableListView)
      return _intrestedDresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "order_frequency")
  final String? orderFrequency;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "phone_number")
  final int number;
  @override
  @JsonKey(name: "profile_image")
  final dynamic profileImage;
  @override
  @JsonKey(name: "address")
  final String address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileModel(newUser: $newUser, pincode: $pincode, landmark: $landmark, area: $area, intrestedDresses: $intrestedDresses, orderFrequency: $orderFrequency, name: $name, number: $number, profileImage: $profileImage, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileModel'))
      ..add(DiagnosticsProperty('newUser', newUser))
      ..add(DiagnosticsProperty('pincode', pincode))
      ..add(DiagnosticsProperty('landmark', landmark))
      ..add(DiagnosticsProperty('area', area))
      ..add(DiagnosticsProperty('intrestedDresses', intrestedDresses))
      ..add(DiagnosticsProperty('orderFrequency', orderFrequency))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('profileImage', profileImage))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.newUser, newUser) || other.newUser == newUser) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.area, area) || other.area == area) &&
            const DeepCollectionEquality()
                .equals(other._intrestedDresses, _intrestedDresses) &&
            (identical(other.orderFrequency, orderFrequency) ||
                other.orderFrequency == orderFrequency) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      newUser,
      pincode,
      landmark,
      area,
      const DeepCollectionEquality().hash(_intrestedDresses),
      orderFrequency,
      name,
      number,
      const DeepCollectionEquality().hash(profileImage),
      address);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {@JsonKey(name: "new_user") final bool newUser,
      @JsonKey(name: "pincode") final String pincode,
      @JsonKey(name: "landmark") final String landmark,
      @JsonKey(name: "area") final String area,
      @JsonKey(name: "intrested_dresses") final List<String>? intrestedDresses,
      @JsonKey(name: "order_frequency") final String? orderFrequency,
      @JsonKey(name: "name") final String name,
      @JsonKey(name: "phone_number") final int number,
      @JsonKey(name: "profile_image") final dynamic profileImage,
      @JsonKey(name: "address") final String address}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "new_user")
  bool get newUser;
  @override
  @JsonKey(name: "pincode")
  String get pincode;
  @override
  @JsonKey(name: "landmark")
  String get landmark;
  @override
  @JsonKey(name: "area")
  String get area;
  @override
  @JsonKey(name: "intrested_dresses")
  List<String>? get intrestedDresses;
  @override
  @JsonKey(name: "order_frequency")
  String? get orderFrequency;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "phone_number")
  int get number;
  @override
  @JsonKey(name: "profile_image")
  dynamic get profileImage;
  @override
  @JsonKey(name: "address")
  String get address;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
