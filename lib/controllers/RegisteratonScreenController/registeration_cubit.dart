import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:sui_daga/controllers/RegisteratonScreenController/registeration_state.dart';
import 'package:sui_daga/view/MainScreen/main_screen.dart';

import '../../helpers/Methods/methods.dart';

class RegisterationCubit extends Cubit<RegisterationState> {
  RegisterationCubit() : super(RegisterationState());
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  FocusNode addressFocusNode = FocusNode();

  void onChangeName(String value) {
    if (value.isEmpty) {
      emit(state.copyWith(nameError: "Name can't be empty"));
    } else {
      emit(state.copyWith(nameError: ""));
    }
  }

  void onChangeAddress(String value) {
    if (value.isEmpty) {
      emit(state.copyWith(addressError: "address can't be empty"));
    } else {
      emit(state.copyWith(addressError: ""));
    }
  }

  void onSelectHowOften(String? value) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(selectedHowOften: 'this field is required'));
    } else {
      emit(state.copyWith(selectedHowOften: ""));
    }
  }

  void onSelectTypeOfDress(String? value) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(selectedTypeOfDress: 'this field is required'));
    } else {
      emit(state.copyWith(selectedTypeOfDress: ""));
    }
  }

  void onClickStartJourney(BuildContext context) {
    if (state.selectedHowOften == null ||
        state.selectedTypeOfDress == null ||
        state.nameError != null ||
        state.addressError != null) {

      if (state.nameError == null &&
          state.addressError == null &&
          state.selectedHowOften == null &&
          state.selectedTypeOfDress == null) {
        emit(state.copyWith(
            nameError: 'Name can\'t be empty',
            addressError: 'address can\'t be empty',
            selectedHowOften: 'This is Required',
            selectedTypeOfDress: 'This is Required'));
      }
      if (state.nameError != null) {
        emit(state.copyWith(nameError: 'Name can\'t be empty'));
      }

      if (state.addressError != null) {
        emit(state.copyWith(nameError: 'address can\'t be empty'));
      }

      if (state.selectedHowOften == null) {
        emit(state.copyWith(selectedHowOften: 'This is Required'));
      }

      if (state.selectedTypeOfDress == null) {
        emit(state.copyWith(selectedTypeOfDress: 'This is Required'));
      }

      vibratePhone();
    } else {
      Navigator.pushNamed(context, MainScreen.id);
    }
  }
}
