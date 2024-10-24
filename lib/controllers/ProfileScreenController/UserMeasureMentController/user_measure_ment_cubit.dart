import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sui_daga/repo/repository.dart';

import '../../../models/ProfileModel/profile_model.dart';
import '../../../routes/routes_helper.dart';

part 'user_measure_ment_state.dart';

class UserMeasureMentCubit extends Cubit<UserMeasureMentState> {
  UserMeasureMentCubit() : super(UserMeasureMentState());
  List<String>? selectedMeasureMentItems = [];

  final Repo _repo = Repo();

  Future<void> getProfiledate(ProfileModel profileModel) async {
    List<String> dresses = [];
    selectedMeasureMentItems = ["Kurta"];
    for (var item in (profileModel.categoryModel ?? []) ){
      dresses.add(item.name ?? "");
    }
    state.measurementData = [];
    if (selectedMeasureMentItems != null) {
      String itemsSelected = "";
      String image = "";
      for (var item in profileModel.categoryModel ?? []) {
        for (int i = 0; i < selectedMeasureMentItems!.length; i++) {
          if (item.name == selectedMeasureMentItems![i]) {
            itemsSelected += "${item.id}";
            image = item.image!;
          }
        }
      }
      await _repo.getMeasurementsFields(categoryId: itemsSelected).then((measurementFields) async {
        List<Map<String, String>> measurementDataTemp = [];

        if (measurementFields != null) {
          for (var item in measurementFields['data']) {
            measurementDataTemp.add({
              'name': item['name'].toString(),
              'value': item['value'].toString(),
              "image": item['image'].toString(),
            });
          }
        }

        await  _repo.getPreviousMeasurements(categoryId: itemsSelected).then((value){

          if(value["data"].isNotEmpty){
            for(int i = 0; i<value['data'][0]["measurement_details"].length; i++){
              for(int j = 0; j<measurementDataTemp.length; j++){
                if(value['data'][0]["measurement_details"][i]['name'] == measurementDataTemp[j]['name']){
                  dynamic val = value['data'][0]["measurement_details"][i]['value'];
                  measurementDataTemp[j].update('value', (value) => value = val);
                }
              }
            }
          }
        });

        emit(state.copyWith(
          selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
          measureMentItems: dresses,
          measurementData: measurementDataTemp,
          image: image,
          profileData: profileModel,
        ));

      });

    }
  }
  void onUpdateMeasurementData(int index, String value, BuildContext context) {
    if(value.isNotEmpty && value != "0" && int.parse(value) < 200){
      state.measurementData![index]['value'] = value;
      emit(state.copyWith(measurementData: state.measurementData));
    } else {
      if(int.parse(value) > 200){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Value should be less than 200'),
          ),
        );
      }
    }
    debugPrint("value: ${state.measurementData!}");
  }

  Future<void> selectMeasureMentItem(int index,
      [List<String>? values, List<CategoryModel>? categoryList]) async {
    state.measurementData = [];
    if (values != null) {
      String itemsSelected = "";
      String image = "";
      for (var item in categoryList ?? []) {
        for (int i = 0; i < values.length; i++) {
          if (item.name == values[i]) {
            itemsSelected += "${item.id}";
            image = item.image!;
          }
        }
      }
     await _repo.getMeasurementsFields(categoryId: itemsSelected).then((measurementFields) async {
       List<Map<String, String>> measurementDataTemp = [];

       if (measurementFields != null) {
          for (var item in measurementFields['data']) {
            measurementDataTemp.add({
              'name': item['name'].toString(),
              'value': item['value'].toString(),
              "image": item['image'].toString(),
            });
          }
          selectedMeasureMentItems = values;
        }

      await  _repo.getPreviousMeasurements(categoryId: itemsSelected).then((value){

          if(value["data"].isNotEmpty){
            for(int i = 0; i<value['data'][0]["measurement_details"].length; i++){
              for(int j = 0; j<measurementDataTemp.length; j++){
                if(value['data'][0]["measurement_details"][i]['name'] == measurementDataTemp[j]['name']){
                  dynamic val = value['data'][0]["measurement_details"][i]['value'];
                  measurementDataTemp[j].update('value', (value) => value = val);
                }
              }
            }
          }
        });

        emit(state.copyWith(
          selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
          measureMentItems: state.measureMentItems,
          measurementData: measurementDataTemp,
          image: image,
        ));

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


  void updateChanges(BuildContext context,List<CategoryModel> categoryList) {
    String itemsSelected = "";
    for (var item in categoryList) {
      for (int i = 0; i < state.selectedMeasureMentItems!.length; i++) {
        if (item.name == state.selectedMeasureMentItems![i]) {
          itemsSelected += "${item.id}";
        }
      }

    }
    List<bool> isAllValuesFilled = List.generate(state.measurementData!.length, (index) => false);
    for(var item in state.measurementData!){
      if(item['value']!.isNotEmpty && item['value'] != "0" && int.parse(item['value']!) < 200){
        isAllValuesFilled[state.measurementData!.indexOf(item)] = true;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('All fill the required fields'),
          ),
        );
        isAllValuesFilled[state.measurementData!.indexOf(item)] = false;
        break;
      }
    }
    bool isValuesFilled = isAllValuesFilled.every((element) => element == true);

    if(isValuesFilled){
      _repo.updateMeasurements(measurementDetails: state.measurementData,measurementUnit: state.measurementUnit,categoryId: itemsSelected).then((value) {
        if(value != null){
          debugPrint("Update Measurement: $value");
        }
      });
    }
  }
}
