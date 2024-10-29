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
  int? get pincode => throw _privateConstructorUsedError;
  @JsonKey(name: "landmark")
  String get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: "area")
  String get area => throw _privateConstructorUsedError;
  @JsonKey(name: "intrested_dresses")
  List<dynamic>? get intrestedDresses => throw _privateConstructorUsedError;
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
  @JsonKey(name: "data")
  List<CategoryModel>? get categoryModel => throw _privateConstructorUsedError;
  @JsonKey(name: "upper_banner")
  List<BannerModel>? get upperBanner => throw _privateConstructorUsedError;
  @JsonKey(name: "middle_banner")
  List<BannerModel>? get middleBanner => throw _privateConstructorUsedError;
  @JsonKey(name: "lower_banner")
  List<BannerModel>? get lowerBanner => throw _privateConstructorUsedError;
  @JsonKey(name: "collection_banner")
  List<BannerModel>? get collectionBanner => throw _privateConstructorUsedError;

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
      @JsonKey(name: "pincode") int? pincode,
      @JsonKey(name: "landmark") String landmark,
      @JsonKey(name: "area") String area,
      @JsonKey(name: "intrested_dresses") List<dynamic>? intrestedDresses,
      @JsonKey(name: "order_frequency") String? orderFrequency,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone_number") int number,
      @JsonKey(name: "profile_image") dynamic profileImage,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "data") List<CategoryModel>? categoryModel,
      @JsonKey(name: "upper_banner") List<BannerModel>? upperBanner,
      @JsonKey(name: "middle_banner") List<BannerModel>? middleBanner,
      @JsonKey(name: "lower_banner") List<BannerModel>? lowerBanner,
      @JsonKey(name: "collection_banner") List<BannerModel>? collectionBanner});
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
    Object? pincode = freezed,
    Object? landmark = null,
    Object? area = null,
    Object? intrestedDresses = freezed,
    Object? orderFrequency = freezed,
    Object? name = null,
    Object? number = null,
    Object? profileImage = freezed,
    Object? address = null,
    Object? categoryModel = freezed,
    Object? upperBanner = freezed,
    Object? middleBanner = freezed,
    Object? lowerBanner = freezed,
    Object? collectionBanner = freezed,
  }) {
    return _then(_value.copyWith(
      newUser: null == newUser
          ? _value.newUser
          : newUser // ignore: cast_nullable_to_non_nullable
              as bool,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<dynamic>?,
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
      categoryModel: freezed == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      upperBanner: freezed == upperBanner
          ? _value.upperBanner
          : upperBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      middleBanner: freezed == middleBanner
          ? _value.middleBanner
          : middleBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      lowerBanner: freezed == lowerBanner
          ? _value.lowerBanner
          : lowerBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      collectionBanner: freezed == collectionBanner
          ? _value.collectionBanner
          : collectionBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
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
      @JsonKey(name: "pincode") int? pincode,
      @JsonKey(name: "landmark") String landmark,
      @JsonKey(name: "area") String area,
      @JsonKey(name: "intrested_dresses") List<dynamic>? intrestedDresses,
      @JsonKey(name: "order_frequency") String? orderFrequency,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone_number") int number,
      @JsonKey(name: "profile_image") dynamic profileImage,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "data") List<CategoryModel>? categoryModel,
      @JsonKey(name: "upper_banner") List<BannerModel>? upperBanner,
      @JsonKey(name: "middle_banner") List<BannerModel>? middleBanner,
      @JsonKey(name: "lower_banner") List<BannerModel>? lowerBanner,
      @JsonKey(name: "collection_banner") List<BannerModel>? collectionBanner});
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
    Object? pincode = freezed,
    Object? landmark = null,
    Object? area = null,
    Object? intrestedDresses = freezed,
    Object? orderFrequency = freezed,
    Object? name = null,
    Object? number = null,
    Object? profileImage = freezed,
    Object? address = null,
    Object? categoryModel = freezed,
    Object? upperBanner = freezed,
    Object? middleBanner = freezed,
    Object? lowerBanner = freezed,
    Object? collectionBanner = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      newUser: null == newUser
          ? _value.newUser
          : newUser // ignore: cast_nullable_to_non_nullable
              as bool,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<dynamic>?,
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
      categoryModel: freezed == categoryModel
          ? _value._categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      upperBanner: freezed == upperBanner
          ? _value._upperBanner
          : upperBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      middleBanner: freezed == middleBanner
          ? _value._middleBanner
          : middleBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      lowerBanner: freezed == lowerBanner
          ? _value._lowerBanner
          : lowerBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      collectionBanner: freezed == collectionBanner
          ? _value._collectionBanner
          : collectionBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl with DiagnosticableTreeMixin implements _ProfileModel {
  const _$ProfileModelImpl(
      {@JsonKey(name: "new_user") this.newUser = true,
      @JsonKey(name: "pincode") this.pincode,
      @JsonKey(name: "landmark") this.landmark = "",
      @JsonKey(name: "area") this.area = "",
      @JsonKey(name: "intrested_dresses")
      final List<dynamic>? intrestedDresses = const [],
      @JsonKey(name: "order_frequency") this.orderFrequency = "",
      @JsonKey(name: "name") this.name = "User",
      @JsonKey(name: "phone_number") this.number = 91,
      @JsonKey(name: "profile_image")
      this.profileImage = "assets/Images/dummyProfileImage.png",
      @JsonKey(name: "address") this.address =
          "Lorem ipsum dolor sit amet, consr adipiscing elit. Sed do eiusmod",
      @JsonKey(name: "data") final List<CategoryModel>? categoryModel,
      @JsonKey(name: "upper_banner") final List<BannerModel>? upperBanner,
      @JsonKey(name: "middle_banner") final List<BannerModel>? middleBanner,
      @JsonKey(name: "lower_banner") final List<BannerModel>? lowerBanner,
      @JsonKey(name: "collection_banner")
      final List<BannerModel>? collectionBanner})
      : _intrestedDresses = intrestedDresses,
        _categoryModel = categoryModel,
        _upperBanner = upperBanner,
        _middleBanner = middleBanner,
        _lowerBanner = lowerBanner,
        _collectionBanner = collectionBanner;

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "new_user")
  final bool newUser;
  @override
  @JsonKey(name: "pincode")
  final int? pincode;
  @override
  @JsonKey(name: "landmark")
  final String landmark;
  @override
  @JsonKey(name: "area")
  final String area;
  final List<dynamic>? _intrestedDresses;
  @override
  @JsonKey(name: "intrested_dresses")
  List<dynamic>? get intrestedDresses {
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
  final List<CategoryModel>? _categoryModel;
  @override
  @JsonKey(name: "data")
  List<CategoryModel>? get categoryModel {
    final value = _categoryModel;
    if (value == null) return null;
    if (_categoryModel is EqualUnmodifiableListView) return _categoryModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerModel>? _upperBanner;
  @override
  @JsonKey(name: "upper_banner")
  List<BannerModel>? get upperBanner {
    final value = _upperBanner;
    if (value == null) return null;
    if (_upperBanner is EqualUnmodifiableListView) return _upperBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerModel>? _middleBanner;
  @override
  @JsonKey(name: "middle_banner")
  List<BannerModel>? get middleBanner {
    final value = _middleBanner;
    if (value == null) return null;
    if (_middleBanner is EqualUnmodifiableListView) return _middleBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerModel>? _lowerBanner;
  @override
  @JsonKey(name: "lower_banner")
  List<BannerModel>? get lowerBanner {
    final value = _lowerBanner;
    if (value == null) return null;
    if (_lowerBanner is EqualUnmodifiableListView) return _lowerBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerModel>? _collectionBanner;
  @override
  @JsonKey(name: "collection_banner")
  List<BannerModel>? get collectionBanner {
    final value = _collectionBanner;
    if (value == null) return null;
    if (_collectionBanner is EqualUnmodifiableListView)
      return _collectionBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileModel(newUser: $newUser, pincode: $pincode, landmark: $landmark, area: $area, intrestedDresses: $intrestedDresses, orderFrequency: $orderFrequency, name: $name, number: $number, profileImage: $profileImage, address: $address, categoryModel: $categoryModel, upperBanner: $upperBanner, middleBanner: $middleBanner, lowerBanner: $lowerBanner, collectionBanner: $collectionBanner)';
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
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('categoryModel', categoryModel))
      ..add(DiagnosticsProperty('upperBanner', upperBanner))
      ..add(DiagnosticsProperty('middleBanner', middleBanner))
      ..add(DiagnosticsProperty('lowerBanner', lowerBanner))
      ..add(DiagnosticsProperty('collectionBanner', collectionBanner));
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
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._categoryModel, _categoryModel) &&
            const DeepCollectionEquality()
                .equals(other._upperBanner, _upperBanner) &&
            const DeepCollectionEquality()
                .equals(other._middleBanner, _middleBanner) &&
            const DeepCollectionEquality()
                .equals(other._lowerBanner, _lowerBanner) &&
            const DeepCollectionEquality()
                .equals(other._collectionBanner, _collectionBanner));
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
      address,
      const DeepCollectionEquality().hash(_categoryModel),
      const DeepCollectionEquality().hash(_upperBanner),
      const DeepCollectionEquality().hash(_middleBanner),
      const DeepCollectionEquality().hash(_lowerBanner),
      const DeepCollectionEquality().hash(_collectionBanner));

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
      @JsonKey(name: "pincode") final int? pincode,
      @JsonKey(name: "landmark") final String landmark,
      @JsonKey(name: "area") final String area,
      @JsonKey(name: "intrested_dresses") final List<dynamic>? intrestedDresses,
      @JsonKey(name: "order_frequency") final String? orderFrequency,
      @JsonKey(name: "name") final String name,
      @JsonKey(name: "phone_number") final int number,
      @JsonKey(name: "profile_image") final dynamic profileImage,
      @JsonKey(name: "address") final String address,
      @JsonKey(name: "data") final List<CategoryModel>? categoryModel,
      @JsonKey(name: "upper_banner") final List<BannerModel>? upperBanner,
      @JsonKey(name: "middle_banner") final List<BannerModel>? middleBanner,
      @JsonKey(name: "lower_banner") final List<BannerModel>? lowerBanner,
      @JsonKey(name: "collection_banner")
      final List<BannerModel>? collectionBanner}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "new_user")
  bool get newUser;
  @override
  @JsonKey(name: "pincode")
  int? get pincode;
  @override
  @JsonKey(name: "landmark")
  String get landmark;
  @override
  @JsonKey(name: "area")
  String get area;
  @override
  @JsonKey(name: "intrested_dresses")
  List<dynamic>? get intrestedDresses;
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
  @override
  @JsonKey(name: "data")
  List<CategoryModel>? get categoryModel;
  @override
  @JsonKey(name: "upper_banner")
  List<BannerModel>? get upperBanner;
  @override
  @JsonKey(name: "middle_banner")
  List<BannerModel>? get middleBanner;
  @override
  @JsonKey(name: "lower_banner")
  List<BannerModel>? get lowerBanner;
  @override
  @JsonKey(name: "collection_banner")
  List<BannerModel>? get collectionBanner;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "is_deleted") bool? isDeleted,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl
    with DiagnosticableTreeMixin
    implements _CategoryModel {
  const _$CategoryModelImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "is_deleted") this.isDeleted,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "priority")
  final int? priority;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "is_deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryModel(id: $id, name: $name, image: $image, description: $description, priority: $priority, status: $status, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, description,
      priority, status, isDeleted, createdAt, updatedAt);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "image") final String? image,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "priority") final int? priority,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "is_deleted") final bool? isDeleted,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "priority")
  int? get priority;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int get v => throw _privateConstructorUsedError;

  /// Serializes this BannerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String image,
      int priority,
      String type,
      String status,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: '__v') int v});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? priority = null,
    Object? type = null,
    Object? status = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String image,
      int priority,
      String type,
      String status,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: '__v') int v});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? priority = null,
    Object? type = null,
    Object? status = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$BannerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerModelImpl with DiagnosticableTreeMixin implements _BannerModel {
  const _$BannerModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.image,
      required this.priority,
      required this.type,
      required this.status,
      @JsonKey(name: 'is_deleted') required this.isDeleted,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: '__v') required this.v});

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String image;
  @override
  final int priority;
  @override
  final String type;
  @override
  final String status;
  @override
  @JsonKey(name: 'is_deleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: '__v')
  final int v;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BannerModel(id: $id, image: $image, priority: $priority, type: $type, status: $status, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BannerModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('v', v));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, priority, type,
      status, isDeleted, createdAt, updatedAt, v);

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
      {@JsonKey(name: '_id') required final String id,
      required final String image,
      required final int priority,
      required final String type,
      required final String status,
      @JsonKey(name: 'is_deleted') required final bool isDeleted,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: '__v') required final int v}) = _$BannerModelImpl;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get image;
  @override
  int get priority;
  @override
  String get type;
  @override
  String get status;
  @override
  @JsonKey(name: 'is_deleted')
  bool get isDeleted;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: '__v')
  int get v;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
