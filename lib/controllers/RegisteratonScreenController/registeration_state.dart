
import 'package:equatable/equatable.dart';

final class RegisterationState extends Equatable {
  final String? addressError;
  final String? nameError;
  final String? selectedHowOften;
  final String? selectedTypeOfDress;


  const RegisterationState({
    this.addressError,
    this.selectedTypeOfDress,
    this.nameError,
    this.selectedHowOften,
  });

  RegisterationState copyWith({
    String? addressError,
    String? nameError,
    String? selectedHowOften,
    String? selectedTypeOfDress,
  }) {
    return RegisterationState(
      addressError: addressError ?? this.addressError,
      selectedTypeOfDress: selectedTypeOfDress ?? this.selectedTypeOfDress,
      nameError: nameError ?? this.nameError,
      selectedHowOften: selectedHowOften ?? this.selectedHowOften,
    );
  }

  @override
  List<Object?> get props => [
    addressError,
    nameError,
    selectedHowOften,
    selectedTypeOfDress,
  ];
}
