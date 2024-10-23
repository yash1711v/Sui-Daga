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
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController chestController = TextEditingController();
  final TextEditingController waistController = TextEditingController();
  final TextEditingController hipController = TextEditingController();
  final TextEditingController shoulderController = TextEditingController();
  final TextEditingController armController = TextEditingController();
  final TextEditingController wristController = TextEditingController();
  final TextEditingController sleetsController = TextEditingController();
  final TextEditingController colarController = TextEditingController();
  final TextEditingController damanController = TextEditingController();

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
    debugPrint("Calling resetValues");
    lengthController.clear();
    chestController.clear();
    waistController.clear();
    hipController.clear();
    shoulderController.clear();
    armController.clear();
    wristController.clear();
    sleetsController.clear();
    colarController.clear();
    damanController.clear();
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
      selectMeasureMentError: null,
      selectedMeasurementType: null,
    ));
  }


  void selectMeasureMentItem(int index, [List<String>? values, List<CategoryModel>? categoryList]) {
    List<Map<String,String>> measurementData = [];
    if (values != null) {
      String itemsSelected = "";
      for (var item in categoryList!) {
        for (int i = 0; i < state.selectedMeasureMentItems!.length; i++) {
          if (item.name == state.selectedMeasureMentItems![i]) {
            itemsSelected += "${item.id}";
          }
        }
      }
      _repo.getMeasurementsFields(categoryId: itemsSelected).then((value) {
        debugPrint("Measurement Data: ${value}");
        if (value != null) {
          List<Map<String,String>> measurementDataTemp = [];
          for(var item in value['data']){
            measurementDataTemp.add({
              'name': item['name'].toString(),
              'value': item['value'].toString(),
            });
          }
        debugPrint("Measurement Data: ${measurementDataTemp}");
          selectedMeasureMentItems = values;
          state.measurementData?.clear();
          state.measurementData?.addAll(measurementDataTemp);
          debugPrint("Measurement Data: ${state.measurementData}");

          emit(state.copyWith(
            selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
            measureMentItems: state.measureMentItems,
            measurementData: state.measurementData,
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

  void onSelectMeasurement(String? value, [BuildContext? context]) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(
          selectMeasureMentError: 'Select measurement',
          selectedMeasurementType: value));
    } else {
      if (value == "Previous Measurements") {
        showLoader(context!);
        String itemsSelected = "";
        for (var item in state.categoryList!) {
          for (int i = 0; i < state.selectedMeasureMentItems!.length; i++) {
            if (item.name == state.selectedMeasureMentItems![i]) {
              debugPrint("Category Id: ${item.id}");
              itemsSelected += "${item.id}";
            }
          }
        }
        _repo.getPreviousMeasurements(categoryId: itemsSelected).then((value) {
          if (value != null) {
            debugPrint("Previous Measurements: ${value}");
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
            // emit(state.copyWith(
            //     selectMeasureMentError: "", selectedMeasurementType: value));
          }
        });
      }
      {
        emit(state.copyWith(
            selectMeasureMentError: "", selectedMeasurementType: value));
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
              debugPrint("Category Id: ${item.id}");
              itemsSelected += "${item.id}";
            }
          }
          Booking booking = state.bookingModel!.copyWith(
              categoryId: itemsSelected,
              measurementUnit: state.measurementUnit,
              measurementDetails: [
              ]);

          emit(state.copyWith(bookingModel: booking));
          _repo.makeBooking(
              bookingData: booking, profilemodel: state.profileData).then((
              value) {
            if (value != null) {
              debugPrint("Booking  ${value}");
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Booking Successful'),
                ),
              );
              // Navigator.pushNamed(context, RoutesHelper.bookingScreen);
            }
          });
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
}