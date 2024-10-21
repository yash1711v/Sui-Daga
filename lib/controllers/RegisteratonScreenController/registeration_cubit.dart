import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/RegisteratonScreenController/registeration_state.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';
import 'package:sui_daga/view/MainScreen/main_screen.dart';

import '../../helpers/Methods/methods.dart';
import '../../repo/repository.dart';
import '../MainScreenController/main_screen_cubit.dart';

class RegisterationCubit extends Cubit<RegisterationState> {
  RegisterationCubit() : super(const RegisterationState());
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  FocusNode addressFocusNode = FocusNode();
  String selectedHowOften = '';
  String selectedTypeOfDress = '';
  final Repo _repo = Repo();
  List<CategoryModel> categoryModel = [];


  void addDresses(List<CategoryModel> categoryModel, ProfileModel profileModel) {
    List<String> dresses = [];
    categoryModel = categoryModel;
    for (var item in categoryModel) {
      dresses.add(item.name!);
    }
    emit(state.copyWith(dresses: dresses, categoryModel: categoryModel, profileModel: profileModel));
  }




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
      selectedHowOften = value;
      emit(state.copyWith(selectedHowOften: ""));
    }
  }

  void onSelectTypeOfDress(String? value) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(selectedTypeOfDress: 'this field is required'));
    } else {
      selectedTypeOfDress = value;
      state.categoryModel!.forEach((element) {
        if (element.name == selectedTypeOfDress) {
          emit(state.copyWith(categoryId: element.id));
        }
      });
      emit(state.copyWith(selectedTypeOfDress: ""));
    }
  }

  void onClickStartJourney(BuildContext context) {
    if (state.selectedHowOften == null ||
        state.selectedTypeOfDress == null ||
        (state.nameError != null && state.nameError!.isNotEmpty) ||
        (state.addressError != null && state.addressError!.isNotEmpty)) {

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
        emit(state.copyWith(addressError: 'address can\'t be empty'));
      }

      if (state.selectedHowOften == null) {
        emit(state.copyWith(selectedHowOften: 'This is Required'));
      }

      if (state.selectedTypeOfDress == null) {
        emit(state.copyWith(selectedTypeOfDress: 'This is Required'));
      }

      vibratePhone();
    } else {

     ProfileModel? profileModel = state.profileModel;

     profileModel =  profileModel!.copyWith(
        name: nameController.text,
        address: addressController.text,
       orderFrequency: selectedHowOften.toLowerCase(),
       intrestedDresses: [state.categoryId!.trim() ?? ''],
       categoryModel: state.categoryModel
      );

      _repo.updateData(profileModel: profileModel).then((value) {

        if (value['status']) {
          profileModel = profileModel!.copyWith(
            name: value['data']['user']['name'],
            address: value['data']['user']['address'],
            number: value['data']['user']['phone_number'],
            orderFrequency: value['data']['user']['order_frequency'],
            intrestedDresses: value['data']['user']['intrested_dresses'],
            area: value['data']['user']['area'],
            landmark: value['data']['user']['landmark'],
            pincode: value['data']['user']['pincode'],
          );
          context.read<MainScreenCubit>().setProfileModel(profileModel!,context);
          Navigator.pushReplacementNamed(context, MainScreen.id);
        }
      });

    }
  }
}
