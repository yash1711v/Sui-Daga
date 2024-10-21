
import 'package:equatable/equatable.dart';

final class OtpState extends Equatable {
  final String? error;
  final String? otp;

  const OtpState({this.error,this.otp, });

  OtpState copyWith({String? error, String? otp}) {
    return OtpState(error: error ?? this.error, otp: otp ?? this.otp);
  }
  @override
  List<Object?> get props => [
    error,
    otp
  ];
}
