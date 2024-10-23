// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'previous_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreviousState _$PreviousStateFromJson(Map<String, dynamic> json) {
  return _PreviousState.fromJson(json);
}

/// @nodoc
mixin _$PreviousState {
  @JsonKey(name: 'data')
  List<PreviousBooking>? get previousBooking =>
      throw _privateConstructorUsedError;

  /// Serializes this PreviousState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreviousState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviousStateCopyWith<PreviousState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousStateCopyWith<$Res> {
  factory $PreviousStateCopyWith(
          PreviousState value, $Res Function(PreviousState) then) =
      _$PreviousStateCopyWithImpl<$Res, PreviousState>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<PreviousBooking>? previousBooking});
}

/// @nodoc
class _$PreviousStateCopyWithImpl<$Res, $Val extends PreviousState>
    implements $PreviousStateCopyWith<$Res> {
  _$PreviousStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviousState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousBooking = freezed,
  }) {
    return _then(_value.copyWith(
      previousBooking: freezed == previousBooking
          ? _value.previousBooking
          : previousBooking // ignore: cast_nullable_to_non_nullable
              as List<PreviousBooking>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviousStateImplCopyWith<$Res>
    implements $PreviousStateCopyWith<$Res> {
  factory _$$PreviousStateImplCopyWith(
          _$PreviousStateImpl value, $Res Function(_$PreviousStateImpl) then) =
      __$$PreviousStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<PreviousBooking>? previousBooking});
}

/// @nodoc
class __$$PreviousStateImplCopyWithImpl<$Res>
    extends _$PreviousStateCopyWithImpl<$Res, _$PreviousStateImpl>
    implements _$$PreviousStateImplCopyWith<$Res> {
  __$$PreviousStateImplCopyWithImpl(
      _$PreviousStateImpl _value, $Res Function(_$PreviousStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviousState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousBooking = freezed,
  }) {
    return _then(_$PreviousStateImpl(
      previousBooking: freezed == previousBooking
          ? _value._previousBooking
          : previousBooking // ignore: cast_nullable_to_non_nullable
              as List<PreviousBooking>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviousStateImpl implements _PreviousState {
  const _$PreviousStateImpl(
      {@JsonKey(name: 'data') final List<PreviousBooking>? previousBooking})
      : _previousBooking = previousBooking;

  factory _$PreviousStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviousStateImplFromJson(json);

  final List<PreviousBooking>? _previousBooking;
  @override
  @JsonKey(name: 'data')
  List<PreviousBooking>? get previousBooking {
    final value = _previousBooking;
    if (value == null) return null;
    if (_previousBooking is EqualUnmodifiableListView) return _previousBooking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PreviousState(previousBooking: $previousBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviousStateImpl &&
            const DeepCollectionEquality()
                .equals(other._previousBooking, _previousBooking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_previousBooking));

  /// Create a copy of PreviousState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviousStateImplCopyWith<_$PreviousStateImpl> get copyWith =>
      __$$PreviousStateImplCopyWithImpl<_$PreviousStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviousStateImplToJson(
      this,
    );
  }
}

abstract class _PreviousState implements PreviousState {
  const factory _PreviousState(
      {@JsonKey(name: 'data')
      final List<PreviousBooking>? previousBooking}) = _$PreviousStateImpl;

  factory _PreviousState.fromJson(Map<String, dynamic> json) =
      _$PreviousStateImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<PreviousBooking>? get previousBooking;

  /// Create a copy of PreviousState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviousStateImplCopyWith<_$PreviousStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
