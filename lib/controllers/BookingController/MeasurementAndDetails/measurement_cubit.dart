import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/helpers/Methods/methods.dart';
import '../../../routes/routes_helper.dart';
import 'measurement_state.dart';

class MeasurementCubit extends Cubit<MeasurementState> {
  MeasurementCubit() : super(MeasurementState()){
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
   void setMeasurementScreen() {
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
    ));}


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
    ));
  }
  List<String> selectedMeasureMentItems = [];

  void selectMeasureMentItem(int index) {

    if (index < 0 || index > state.measureMentItems!.length) return;

    selectedMeasureMentItems = [state.measureMentItems![index]];
    emit(state.copyWith(
      selectedMeasureMentItems: selectedMeasureMentItems,
      measureMentItems: state.measureMentItems,
    ));
  }


  void onSelectMeasurement(String? value) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(selectMeasureMentError: 'Select measurement'));
    } else {
      emit(state.copyWith(selectMeasureMentError: ""));
    }
  }

  void onLengthChange(String length) {
    if (length.isEmpty) {
      emit(state.copyWith(lengthError: 'Length is required'));
    }else {
      emit(state.copyWith(lengthError: ''));
    }
  }
  void onChestChange(String chest) {
    if (chest.isEmpty) {
      emit(state.copyWith(chestError: 'Chest is required'));
    } else {
      emit(state.copyWith(chestError: ''));
    }
  }

  onWaistChange(String waist) {
    if (waist.isEmpty) {
      emit(state.copyWith(waistError: 'Waist is required'));
    } else {
      emit(state.copyWith(waistError: ''));
    }
  }

  onHipChange(String hip) {
    if (hip.isEmpty) {
      emit(state.copyWith(hipError: 'Hip is required'));
    } else {
      emit(state.copyWith(hipError: ''));
    }
  }

  onShoulderChange(String shoulder) {
    if (shoulder.isEmpty) {
      emit(state.copyWith(shoulderError: 'Shoulder is required'));
    } else {
      emit(state.copyWith(shoulderError: ''));
    }
  }

  onArmChange(String arm) {
    if (arm.isEmpty) {
      emit(state.copyWith(armError: 'Arm is required'));
    } else {
      emit(state.copyWith(armError: ''));
    }
  }

  onWristChange(String wrist) {
    if (wrist.isEmpty) {
      emit(state.copyWith(wristError: 'Wrist is required'));
    } else {
      emit(state.copyWith(wristError: ''));
    }
  }

  onSleetsChange(String sleets) {
    if (sleets.isEmpty) {
      emit(state.copyWith(sleetsError: 'Sleets is required'));
    } else {
      emit(state.copyWith(sleetsError: ''));
    }
  }

  onColarChange(String colar) {
    if (colar.isEmpty) {
      emit(state.copyWith(colarError: 'Colar is required'));
    } else {
      emit(state.copyWith(colarError: ''));
    }
  }

  onDamanChange(String daman) {
    if (daman.isEmpty) {
      emit(state.copyWith(damanError: 'Daman is required'));
    } else {
      emit(state.copyWith(damanError: ''));
    }
  }

  void onCheckAllValues(BuildContext context) {
    if (state.selectMeasureMentError != null &&
        state.lengthError != null &&
        state.waistError != null &&
        state.hipError != null &&
        state.shoulderError != null &&
        state.armError != null &&
        state.wristError != null &&
        state.sleetsError != null &&
        state.colarError != null &&
        state.damanError != null && state.chestError != null) {
      if (state.lengthError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(lengthError: 'Length is required'));
      } else if (state.armError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(armError: 'Arm is required'));
      } else if (state.waistError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(waistError: 'Waist is required'));
      } else if (state.hipError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(hipError: 'Hip is required'));
      } else if (state.shoulderError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(shoulderError: 'Shoulder is required'));
      } else if (state.wristError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(wristError: 'Wrist is required'));
      } else if (state.sleetsError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(sleetsError: 'Sleets is required'));
      } else if (state.colarError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(colarError: 'Colar is required'));
      } else if (state.damanError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(damanError: 'Daman is required'));
      }else if (state.chestError!.isNotEmpty) {
        vibratePhone();
        emit(state.copyWith(chestError: 'chest is required'));
      } else {
        if(state.selectMeasureMentError != null){
          debugPrint('All values are correct');
        } else {
          vibratePhone();
          emit(state.copyWith(selectMeasureMentError: 'Select measurement'));
        }
      }
    } else {
      if (state.selectMeasureMentError == null &&
          state.lengthError == null &&
          state.chestError == null &&
          state.waistError == null &&
          state.hipError == null &&
          state.shoulderError == null &&
          state.armError == null &&
          state.wristError == null &&
          state.sleetsError == null &&
          state.colarError == null &&
          state.damanError == null) {
        {
          emit(state.copyWith(
              selectMeasureMentError: 'Select measurement',
              chestError: 'Chest is required',
              lengthError: 'Length is required',
              waistError: 'Waist is required',
              hipError: 'Hip is required',
              shoulderError: 'Shoulder is required',
              armError: 'Arm is required',
              wristError: 'Wrist is required',
              sleetsError: 'Sleets is required',
              colarError: 'Colar is required',
              damanError: 'Daman is required'));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('All values are correct'),
            ),
          );
        }

      if (state.selectMeasureMentError == null) {
        emit(state.copyWith(selectMeasureMentError: 'Select measurement'));
      }
        if (state.lengthError == null) {
          emit(state.copyWith(lengthError: 'Length is required'));
        }
        if (state.armError == null) {
          emit(state.copyWith(armError: 'Arm is required'));
        }
        if (state.waistError == null) {
          emit(state.copyWith(waistError: 'Waist is required'));
        }
        if (state.hipError == null) {
          emit(state.copyWith(hipError: 'Hip is required'));
        }
        if (state.shoulderError == null) {
          emit(state.copyWith(shoulderError: 'Shoulder is required'));
        }
        if (state.wristError == null) {
          emit(state.copyWith(wristError: 'Wrist is required'));
        }
        if (state.sleetsError == null) {
          emit(state.copyWith(sleetsError: 'Sleets is required'));
        }
        if (state.colarError == null) {
          emit(state.copyWith(colarError: 'Colar is required'));
        }
        if (state.damanError == null) {
          emit(state.copyWith(damanError: 'Daman is required'));
        }
        if (state.chestError == null) {
          emit(state.copyWith(chestError: 'chest is required'));
        }

          }

      vibratePhone();
    }
  }
}
