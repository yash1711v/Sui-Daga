import 'package:equatable/equatable.dart';

final class HomeServiceState extends Equatable {
  final  String? addressError;
  final  String? areaError;
  final  String? pinCodeError;
  final  String? landmarkError;

  final bool? allFieldsValid;

  const HomeServiceState({
    this.addressError,
    this.areaError,
    this.pinCodeError,
    this.landmarkError,
    this.allFieldsValid = false,
  });

   HomeServiceState copyWith({
    String? addressError,
    String? areaError,
    String? pinCodeError,
    String? landmarkError,
     bool? allFieldsValid,
  }) {
    return HomeServiceState(
      addressError: addressError ?? this.addressError,
      areaError: areaError ?? this.areaError,
      pinCodeError: pinCodeError ?? this.pinCodeError,
      landmarkError: landmarkError ?? this.landmarkError,
      allFieldsValid: allFieldsValid ?? this.allFieldsValid,
    );
  }
  @override
  List<Object?> get props => [
    addressError,
    areaError,
    pinCodeError,
    landmarkError,
    allFieldsValid,
  ];
}
