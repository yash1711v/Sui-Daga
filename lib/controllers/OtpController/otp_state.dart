
import 'package:equatable/equatable.dart';

final class OtpState extends Equatable {
  final String? error;

  const OtpState({this.error,});

  OtpState copyWith({String? error}) {
    return OtpState(error: error ?? this.error);
  }
  @override
  List<Object?> get props => [
    error
  ];
}
