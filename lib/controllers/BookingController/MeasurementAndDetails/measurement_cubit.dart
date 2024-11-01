import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/helpers/Methods/methods.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';
import 'package:sui_daga/widget/Helper/widgets.dart';
import '../../../models/BookingModel/booking_model.dart';
import '../../../repo/repository.dart';
import '../../../routes/routes_helper.dart';
import 'measurement_state.dart';

class MeasurementCubit extends Cubit<MeasurementState> {
  MeasurementCubit() : super(MeasurementState()) {
    if (state.measureMentItems!.isNotEmpty) {
      selectedMeasureMentItems = [state.measureMentItems![0]];
    }
  }

  final Repo _repo = Repo();

  List<String>? selectedMeasureMentItems = [];


  void setMeasurementScreen([ProfileModel? profileModel,
    List<CategoryModel>? categoryList,
    List<String>? measureMentItems,
    Booking? bookingModel]) {
    emit(state.copyWith(
      categoryList: categoryList ?? state.categoryList,
      profileData: profileModel ?? state.profileData,
      selectedMeasureMentItems: selectedMeasureMentItems,
      measureMentItems: measureMentItems ?? state.measureMentItems,
      bookingModel: bookingModel ?? state.bookingModel,
    ));
  }

  void setBookingModelFromHomeService(Booking booking) {
    emit(state.copyWith(bookingModel: booking));
  }

  void resetValues() {

    state.lengthError = null;
    state.chestError = null;
    state.waistError = null;
    state.hipError = null;
    state.shoulderError = null;
    state.armError = null;
    state.wristError = null;
    state.sleetsError = null;
    state.colarError = null;
    state.damanError = null;
    state.selectMeasureMentError = null;
    List<Map<String,String>>? measurementDataTemp = state.measurementData;

    for(var item in measurementDataTemp!){
      item.update('value', (value) => value = "");
    }

    emit(state.copyWith(
      lengthError: null,
      chestError: null,
      waistError: null,
      hipError: null,
      shoulderError: null,
      armError: null,
      wristError: null,
      sleetsError: null,
      colarError: null,
      damanError: null,
      selectMeasureMentError: "",
      selectedMeasurementType: "Add New Measurements",
      measurementData: measurementDataTemp
    ));
  }


  void selectMeasureMentItem(int index, [List<String>? values, List<CategoryModel>? categoryList]) {
    state.measurementData = [];
    if (values != null) {
      String itemsSelected = "";
      for (var item in categoryList!) {
        for (int i = 0; i < values.length; i++) {
          if (item.name == values[i]) {
            itemsSelected += "${item.id}";
          }
        }
      }
      _repo.getMeasurementsFields(categoryId: itemsSelected).then((value) {
        if (value != null ) {
          List<Map<String,String>> measurementDataTemp = [];
          for(var item in value['data']){

            measurementDataTemp.add({
              'name': item['name'].toString(),
              'value': item['value'].toString(),
            });
          }


          selectedMeasureMentItems = values;

          if(state.selectedMeasurementType == "Previous Measurements"){
            _repo.getPreviousMeasurements(categoryId: itemsSelected).then((data){
              if(data["data"].isNotEmpty){
                for(int i = 0; i<data['data'][0]["measurement_details"].length; i++){
                  for(int j = 0; j<measurementDataTemp.length; j++){
                    if(data['data'][0]["measurement_details"][i]['name'] == measurementDataTemp[j]['name']){
                      dynamic val = data['data'][0]["measurement_details"][i]['value'];
                      measurementDataTemp[j].update('value', (value) => value = val);
                    }
                  }
                }
                emit(state.copyWith(
                  selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
                  measureMentItems: state.measureMentItems,
                  selectedMeasurementType: state.selectedMeasurementType,
                  measurementData: measurementDataTemp,
                ));
              } else {
                emit(state.copyWith(
                  selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
                  measureMentItems: state.measureMentItems,
                  selectedMeasurementType: state.selectedMeasurementType,
                  measurementData: measurementDataTemp,
                ));
              }
            });
          } else {
          emit(state.copyWith(
            selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
            measureMentItems: state.measureMentItems,
            measurementData: measurementDataTemp,
          ));

          }
      }});
    } else {
      selectedMeasureMentItems = [state.measureMentItems![index]];
      emit(state.copyWith(
        selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
        measureMentItems: state.measureMentItems,
        measurementData: state.measurementData,
      ));
    }

  }

  void onSelectMeasurement(String? values, [BuildContext? context]) {
    if (values == null || values.isEmpty) {
      emit(state.copyWith(
          selectMeasureMentError: 'Select measurement',
          selectedMeasurementType: values));
    } else {
      if (values == "Previous Measurements") {
        showLoader(context!);
        String itemsSelected = "";
        for (var item in state.categoryList!) {
          for (int i = 0; i < state.selectedMeasureMentItems!.length; i++) {
            if (item.name == state.selectedMeasureMentItems![i]) {
              itemsSelected += "${item.id}";
            }
          }
        }
        _repo.getPreviousMeasurements(categoryId: itemsSelected).then((value) {
          if (value != null) {
            if (value['data'] == null || value['data'].isEmpty) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      "You Don't  have previous measurements with this item"),
                ),
              );
              emit(state.copyWith(
                  selectMeasureMentError: "",
                  selectedMeasurementType: "Add New Measurements"));
            }
            else {
              List<Map<String, String>>? measurementDataTemp = state.measurementData;

              for (int i = 0;
              i < value['data'][0]['measurement_details'].length;
              i++) {
                for (int j = 0; j < measurementDataTemp!.length; j++) {
                  if (value['data'][0]['measurement_details'][i]['name'] ==
                      measurementDataTemp[j]['name']) {
                    dynamic val =
                    value['data'][0]['measurement_details'][i]['value'];
                    measurementDataTemp[j]
                        .update("value", (value) => value = val);
                  }
                }
              }

              emit(state.copyWith(
                  selectMeasureMentError: "",
                  selectedMeasurementType:  values,
                  measurementData: measurementDataTemp));
              Navigator.pop(context);
            }

          }
        });
      } else {
        List<Map<String,String>>? measurementDataTemp = state.measurementData;

        for(var item in measurementDataTemp!){
          item.update('value', (value) => value = "");
        }
        emit(state.copyWith(
            selectMeasureMentError: "",
            selectedMeasurementType: values,
            measurementData: measurementDataTemp));
      }
    }
  }


  void onChangeMeasurementUnit(String value) {
    emit(state.copyWith(measurementUnit: value));
  }

  void onCheckAllValues(BuildContext context) {
    if (state.selectMeasureMentError != null) {
      if (state.selectMeasureMentError != null) {
        showLoader(context);
        String itemsSelected = "";
        for (var item in state.categoryList!) {
          for (int i = 0; i < state.selectedMeasureMentItems!.length; i++) {
            if (item.name == state.selectedMeasureMentItems![i]) {
              itemsSelected += "${item.id}";
            }
          }}
        List<bool> isAllValuesFilled = List.generate(state.measurementData!.length, (index) => false);
        for(var item in state.measurementData!){
          if(item['value']!.isNotEmpty && item['value'] != "0"){
            isAllValuesFilled[state.measurementData!.indexOf(item)] = true;
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('All fill the required fields'),
              ),
            );
            isAllValuesFilled[state.measurementData!.indexOf(item)] = false;
            Navigator.pop(context);
            break;
          }
        }
        bool isValuesFilled = isAllValuesFilled.every((element) => element == true);
        if(isValuesFilled){
          Booking booking = state.bookingModel!.copyWith(
              categoryId: itemsSelected,
              measurementUnit: state.measurementUnit,
              measurementDetails: [
                for(var item in state.measurementData!)
                  MeasurementDetail(
                    categoryId: itemsSelected,
                    name: item['name']!,
                    value: item['value']!,
                  )
              ]);
            debugPrint(booking.toJson().toString());


          _repo.makeBooking(
              bookingData: booking, profilemodel: state.profileData).then((
              value) {
            if (value != null) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Booking Successful'),
                ),
              );
              // Navigator.pushNamed(context, RoutesHelper.bookingScreen);
            }
          });
          emit(state.copyWith(bookingModel: booking));
        }


      }
    } else {
      if (state.selectMeasureMentError == null) {
        {
          emit(state.copyWith(
            selectMeasureMentError: 'Select measurement',
          ));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('All fill the required fields'),
            ),
          );
        }
        vibratePhone();
      }
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
  }
}