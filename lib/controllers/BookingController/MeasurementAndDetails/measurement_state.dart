import 'package:equatable/equatable.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';

import '../../../models/BookingModel/booking_model.dart';

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
  final List<String>? measureMentItems;
  final List<String>? selectedMeasureMentItems;
  final List<CategoryModel>? categoryList;
  final ProfileModel? profileData;
   Booking? bookingModel;
  final String? selectedMeasurementType;
  final String? measurementUnit;
   List<Map<String,String>>? measurementData;

   MeasurementState({
     this.measurementData,
     this.selectMeasureMentError,
     this.measurementUnit = "CM",
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
     this.categoryList, this.profileData,
    this.bookingModel,
     this.selectedMeasurementType,

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
     List<CategoryModel>? categoryList,
  ProfileModel? profileData,
    Booking? bookingModel,
    String? selectedMeasurementType,
    String? measurementUnit,
    List<Map<String,String>>? measurementData,
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
      categoryList: categoryList ?? this.categoryList,
      profileData: profileData ?? this.profileData,
      bookingModel: bookingModel ?? this.bookingModel,
      selectedMeasurementType: selectedMeasurementType ?? this.selectedMeasurementType,
      measurementUnit: measurementUnit ?? this.measurementUnit,
      measurementData: measurementData ?? this.measurementData,
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

        measureMentItems,
        selectedMeasureMentItems,

        categoryList,
        profileData,
        bookingModel,
        selectedMeasurementType,
        measurementUnit,
        measurementData,
      ];
}
