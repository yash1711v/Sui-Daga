import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/helpers/Methods/methods.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';
import '../../../models/BookingModel/booking_model.dart';
import '../../../routes/routes_helper.dart';
import 'measurement_state.dart';

class MeasurementCubit extends Cubit<MeasurementState> {
  MeasurementCubit() : super(MeasurementState()) {
    if (state.measureMentItems!.isNotEmpty) {
      selectedMeasureMentItems = [state.measureMentItems![0]];
    }
  }

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

  void setMeasurementScreen(
      [ProfileModel? profileModel,
      List<CategoryModel>? categoryList,
      List<String>? measureMentItems,
      Booking? bookingModel]) {
    emit(state.copyWith(
      lengthController: lengthController,
      chestController: chestController,
      waistController: waistController,
      hipController: hipController,
      shoulderController: shoulderController,
      armController: armController,
      wristController: wristController,
      sleetsController: sleetsController,
      colarController: colarController,
      damanController: damanController,
      categoryList: categoryList,
      profileData: profileModel,
      selectedMeasureMentItems: selectedMeasureMentItems,
      measureMentItems: measureMentItems,
      bookingModel: bookingModel,
    ));
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
      lengthController: lengthController,
      chestController: chestController,
      waistController: waistController,
      hipController: hipController,
      shoulderController: shoulderController,
      armController: armController,
      wristController: wristController,
      sleetsController: sleetsController,
      colarController: colarController,
      damanController: damanController,
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
      selectedMeasureMentItems: []
    ));
  }

  List<String> selectedMeasureMentItems = [];

  void selectMeasureMentItem(int index , [List<String>? values]) {
    if(values != null) {
      selectedMeasureMentItems = values;
    } else {
      selectedMeasureMentItems = [state.measureMentItems![index]];
    }
    emit(state.copyWith(
      selectedMeasureMentItems: selectedMeasureMentItems, // Use a copy
      measureMentItems: state.measureMentItems,
    ));
  }

  void onSelectMeasurement(String? value) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(selectMeasureMentError: 'Select measurement',selectedMeasurementType: value));
    } else {
      emit(state.copyWith(selectMeasureMentError: "", selectedMeasurementType: value));
    }
  }

  // void onLengthChange(String length) {
  //   if (length.isEmpty) {
  //     emit(state.copyWith(lengthError: 'Length is required'));
  //   } else {
  //     emit(state.copyWith(lengthError: ''));
  //   }
  // }
  //
  // void onChestChange(String chest) {
  //   if (chest.isEmpty) {
  //     emit(state.copyWith(chestError: 'Chest is required'));
  //   } else {
  //     emit(state.copyWith(chestError: ''));
  //   }
  // }

  // onWaistChange(String waist) {
  //   if (waist.isEmpty) {
  //     emit(state.copyWith(waistError: 'Waist is required'));
  //   } else {
  //     emit(state.copyWith(waistError: ''));
  //   }
  // }
  //
  // onHipChange(String hip) {
  //   if (hip.isEmpty) {
  //     emit(state.copyWith(hipError: 'Hip is required'));
  //   } else {
  //     emit(state.copyWith(hipError: ''));
  //   }
  // }
  //
  // onShoulderChange(String shoulder) {
  //   if (shoulder.isEmpty) {
  //     emit(state.copyWith(shoulderError: 'Shoulder is required'));
  //   } else {
  //     emit(state.copyWith(shoulderError: ''));
  //   }
  // }
  //
  // onArmChange(String arm) {
  //   if (arm.isEmpty) {
  //     emit(state.copyWith(armError: 'Arm is required'));
  //   } else {
  //     emit(state.copyWith(armError: ''));
  //   }
  // }
  //
  // onWristChange(String wrist) {
  //   if (wrist.isEmpty) {
  //     emit(state.copyWith(wristError: 'Wrist is required'));
  //   } else {
  //     emit(state.copyWith(wristError: ''));
  //   }
  // }
  //
  // onSleetsChange(String sleets) {
  //   if (sleets.isEmpty) {
  //     emit(state.copyWith(sleetsError: 'Sleets is required'));
  //   } else {
  //     emit(state.copyWith(sleetsError: ''));
  //   }
  // }
  //
  // onColarChange(String colar) {
  //   if (colar.isEmpty) {
  //     emit(state.copyWith(colarError: 'Colar is required'));
  //   } else {
  //     emit(state.copyWith(colarError: ''));
  //   }
  // }
  //
  // onDamanChange(String daman) {
  //   if (daman.isEmpty) {
  //     emit(state.copyWith(damanError: 'Daman is required'));
  //   } else {
  //     emit(state.copyWith(damanError: ''));
  //   }
  // }

  void onCheckAllValues(BuildContext context) {
    if (state.selectMeasureMentError != null) {
          debugPrint('All values are correct');
          debugPrint("Select Measurements ${state.}");
    } else {
        if (state.selectMeasureMentError == null) {
          emit(state.copyWith(selectMeasureMentError: 'Select measurement'));
        }
      vibratePhone();
    }
  }
}
