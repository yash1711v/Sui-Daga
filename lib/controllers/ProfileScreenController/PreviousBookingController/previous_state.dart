import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/BookingModel/booking_model.dart';

part 'previous_state.freezed.dart';
part 'previous_state.g.dart'; // Required for JSON serialization

@freezed
class PreviousState with _$PreviousState {
  const factory PreviousState({
    @JsonKey(name: 'data') List<PreviousBooking>? previousBooking,
  }) = _PreviousState;

  factory PreviousState.fromJson(Map<String, dynamic> json) => _$PreviousStateFromJson(json);
}