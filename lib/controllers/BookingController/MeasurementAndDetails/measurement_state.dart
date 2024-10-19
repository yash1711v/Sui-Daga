import 'package:equatable/equatable.dart';

import '../../../routes/routes_helper.dart';

final class MeasurementState extends Equatable {
   String? selectMeasureMentError;
   String? lengthError;
   String? chestError;
   String? waistError;
   String? hipError;
   String? shoulderError;
   String? armError;
   String? wristError;
   String? sleetsError;
   String? colarError;
   String? damanError;
  final TextEditingController? lengthController;
  final TextEditingController? chestController;
  final TextEditingController? waistController;
  final TextEditingController? hipController;
  final TextEditingController? shoulderController;
  final TextEditingController? armController;
  final TextEditingController? wristController;
  final TextEditingController? sleetsController;
  final TextEditingController? colarController;
  final TextEditingController? damanController;
  final List<String>? measureMentItems;
  final List<String>? selectedMeasureMentItems;

   MeasurementState({
    this.selectMeasureMentError,
    this.chestError,
    this.lengthError,
    this.waistError,
    this.hipError,
    this.shoulderError,
    this.armError,
    this.wristError,
    this.sleetsError,
    this.colarError,
    this.damanError,
    this.measureMentItems = const [
      "Kurta",
      "Pant",
      "Gown",
      "Lehnga",
      "Co-ords"
    ],
    this.selectedMeasureMentItems,
    this.lengthController,
    this.chestController,
    this.waistController,
    this.hipController,
    this.shoulderController,
    this.armController,
    this.wristController,
    this.sleetsController,
    this.colarController,
    this.damanController,
  });

  MeasurementState copyWith({
    String? selectMeasureMentError,
    String? chestError,
    String? lengthError,
    String? waistError,
    String? hipError,
    String? shoulderError,
    String? armError,
    String? wristError,
    String? sleetsError,
    String? colarError,
    String? damanError,
    List<String>? measureMentItems,
    List<String>? selectedMeasureMentItems,
    TextEditingController? lengthController,
    TextEditingController? chestController,
    TextEditingController? waistController,
    TextEditingController? hipController,
    TextEditingController? shoulderController,
    TextEditingController? armController,
    TextEditingController? wristController,
    TextEditingController? sleetsController,
    TextEditingController? colarController,
    TextEditingController? damanController,
  }) {
    return MeasurementState(
      selectMeasureMentError:
          selectMeasureMentError ?? this.selectMeasureMentError,
      chestError: chestError ?? this.chestError,
      lengthError: lengthError ?? this.lengthError,
      waistError: waistError ?? this.waistError,
      hipError: hipError ?? this.hipError,
      shoulderError: shoulderError ?? this.shoulderError,
      armError: armError ?? this.armError,
      wristError: wristError ?? this.wristError,
      sleetsError: sleetsError ?? this.sleetsError,
      colarError: colarError ?? this.colarError,
      damanError: damanError ?? this.damanError,
      measureMentItems: measureMentItems ?? this.measureMentItems,
      selectedMeasureMentItems:
          selectedMeasureMentItems ?? this.selectedMeasureMentItems,
      lengthController: lengthController ?? this.lengthController,
      chestController: chestController ?? this.chestController,
      waistController: waistController ?? this.waistController,
      hipController: hipController ?? this.hipController,
      shoulderController: shoulderController ?? this.shoulderController,
      armController: armController ?? this.armController,
      wristController: wristController ?? this.wristController,
      sleetsController: sleetsController ?? this.sleetsController,
      colarController: colarController ?? this.colarController,
      damanController: damanController ?? this.damanController,
    );
  }

  @override
  List<Object?> get props => [
        selectMeasureMentError,
        lengthError,
        chestError,
        waistError,
        hipError,
        shoulderError,
        armError,
        wristError,
        sleetsError,
        colarError,
        damanError,
        lengthController,
        chestController,
        waistController,
        hipController,
        shoulderController,
        armController,
        wristController,
        sleetsController,
        colarController,
        damanController,
        measureMentItems,
        selectedMeasureMentItems,
        lengthController,
        chestController,
        waistController,
        hipController,
        shoulderController,
        armController,
        wristController,
        sleetsController,
        colarController,
        damanController,
      ];
}
