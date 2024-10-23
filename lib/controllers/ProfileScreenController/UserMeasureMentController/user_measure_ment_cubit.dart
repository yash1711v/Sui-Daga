import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sui_daga/repo/repository.dart';

import '../../../models/ProfileModel/profile_model.dart';

part 'user_measure_ment_state.dart';

class UserMeasureMentCubit extends Cubit<UserMeasureMentState> {
  UserMeasureMentCubit() : super(UserMeasureMentState());
  List<String>? selectedMeasureMentItems = [];

  final Repo _repo = Repo();

  void getProfiledate(ProfileModel profileModel) {
    List<String> dresses = [];
    for (var item in ((state.profileData ?? ProfileModel()).categoryModel ?? [CategoryModel()])) {
      dresses.add(item.name ?? "");
    }
    emit(state.copyWith(profileData: profileModel, measureMentItems: dresses));
  }


  void selectMeasureMentItem(int index,
      [List<String>? values, List<CategoryModel>? categoryList]) {
    state.measurementData = [];
    if (values != null) {
      String itemsSelected = "";
      String image = "";
      for (var item in categoryList!) {
        for (int i = 0; i < values.length; i++) {
          if (item.name == values[i]) {
            itemsSelected += "${item.id}";
            image = item.image!;
          }
        }
      }
      _repo.getMeasurementsFields(categoryId: itemsSelected).then((value) {
        if (value != null) {
          List<Map<String, String>> measurementDataTemp = [];
          for (var item in value['data']) {
            measurementDataTemp.add({
              'name': item['name'].toString(),
              'value': item['value'].toString(),
            });
          }
          selectedMeasureMentItems = values;
          emit(state.copyWith(
            selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
            measureMentItems: state.measureMentItems,
            measurementData: measurementDataTemp,
            image: image,
          ));
        }
      });
    } else {
      selectedMeasureMentItems = [state.measureMentItems![index]];
      emit(state.copyWith(
        selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
        measureMentItems: state.measureMentItems,
        measurementData: state.measurementData,
      ));
    }
  }

  void onChangeMeasurementUnit(String value) {
    emit(state.copyWith(measurementUnit: value));
  }
}
