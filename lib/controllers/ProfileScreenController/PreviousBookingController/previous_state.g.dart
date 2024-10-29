// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreviousStateImpl _$$PreviousStateImplFromJson(Map<String, dynamic> json) =>
    _$PreviousStateImpl(
      previousBooking: (json['data'] as List<dynamic>?)
          ?.map((e) => PreviousBooking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PreviousStateImplToJson(_$PreviousStateImpl instance) =>
    <String, dynamic>{
      'data': instance.previousBooking,
    };
