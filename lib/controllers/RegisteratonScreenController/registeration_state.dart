import 'package:equatable/equatable.dart';

import '../../models/ProfileModel/profile_model.dart';

final class RegisterationState extends Equatable {
  final String? addressError;
  final String? nameError;
  final String? selectedHowOften;
  final String? selectedTypeOfDress;
  final List<String>? dresses;
  final String? categoryId;
  final List<CategoryModel>? categoryModel;
  final ProfileModel? profileModel;

  const RegisterationState({
    this.addressError,
    this.selectedTypeOfDress,
    this.nameError,
    this.selectedHowOften,
    this.dresses,
    this.categoryId,
    this.categoryModel,
    this.profileModel,
  });

  RegisterationState copyWith({
    String? addressError,
    String? nameError,
    String? selectedHowOften,
    String? selectedTypeOfDress,
    List<String>? dresses,
    String? categoryId,
    List<CategoryModel>? categoryModel,
    ProfileModel? profileModel,
  }) {
    return RegisterationState(
      addressError: addressError ?? this.addressError,
      selectedTypeOfDress: selectedTypeOfDress ?? this.selectedTypeOfDress,
      nameError: nameError ?? this.nameError,
      selectedHowOften: selectedHowOften ?? this.selectedHowOften,
      dresses: dresses ?? this.dresses,
      categoryId: categoryId ?? this.categoryId,
      categoryModel: categoryModel ?? this.categoryModel,
      profileModel: profileModel ?? this.profileModel,
    );
  }

  @override
  List<Object?> get props => [
        addressError,
        nameError,
        selectedHowOften,
        selectedTypeOfDress,
        dresses,
        categoryId,
        categoryModel,
        profileModel,
      ];
}
