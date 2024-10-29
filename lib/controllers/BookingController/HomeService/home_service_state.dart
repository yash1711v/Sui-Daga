import 'package:equatable/equatable.dart';

import '../../../models/BookingModel/booking_model.dart';
import '../../../routes/routes_helper.dart';

final class HomeServiceState extends Equatable {
  String? addressError;
  String? TimeError;
  String? numberError;
  String? number;
  String? alternativeMobileNumberError;
  String? alternativeMobileNumber;
  String? areaError;
  String? pinCodeError;
  String? landmarkError;
  bool? isHomeService;

  final bool? allFieldsValid;
  final Booking? bookingData;

  final TextEditingController? addressController;
  final TextEditingController? areaController;
  final TextEditingController? pincodeController;
  final TextEditingController? landmarkController;
  final TextEditingController? mobileController;
  final TextEditingController? alternativeMobileNumberController;
  final TextEditingController? dateController;
  final TextEditingController? TimeController;
  String? dateError;
  DateTime? selectedDate;

  HomeServiceState({
    this.numberError,
    this.TimeController,
    this.isHomeService,
    this.number,
    this.addressError,
    this.mobileController,
    this.areaError,
    this.pinCodeError,
    this.landmarkError,
    this.allFieldsValid = false,
    this.addressController,
    this.areaController,
    this.pincodeController,
    this.landmarkController,
    this.bookingData,
    this.alternativeMobileNumber,
    this.alternativeMobileNumberError,
    this.alternativeMobileNumberController,
    this.dateController,
    this.dateError,
    this.TimeError,
    this.selectedDate,
  });

  HomeServiceState copyWith({
    String? addressError,
    String? numberError,
    String? number,
    String? areaError,
    String? pinCodeError,
    String? landmarkError,
    bool? allFieldsValid,
    TextEditingController? addressController,
    TextEditingController? areaController,
    TextEditingController? pincodeController,
    TextEditingController? landmarkController,
    TextEditingController? mobileController,
    TextEditingController? alternativeMobileNumberController,
    TextEditingController? dateController,
    Booking? bookingData,
    String? alternativeMobileNumber,
    String? alternativeMobileNumberError,
    bool? isHomeService,
    String? dateError,
    String? TimeError,
    DateTime? selectedDate,
    TextEditingController? TimeController,
  }) {
    return HomeServiceState(
      addressError: addressError ?? this.addressError,
      areaError: areaError ?? this.areaError,
      pinCodeError: pinCodeError ?? this.pinCodeError,
      landmarkError: landmarkError ?? this.landmarkError,
      allFieldsValid: allFieldsValid ?? this.allFieldsValid,
      addressController: addressController ?? this.addressController,
      areaController: areaController ?? this.areaController,
      pincodeController: pincodeController ?? this.pincodeController,
      landmarkController: landmarkController ?? this.landmarkController,
      alternativeMobileNumberController: alternativeMobileNumberController ??
          this.alternativeMobileNumberController,
      bookingData: bookingData ?? this.bookingData,
      mobileController: mobileController ?? this.mobileController,
      numberError: numberError ?? this.numberError,
      number: number ?? this.number,
      alternativeMobileNumber:
          alternativeMobileNumber ?? this.alternativeMobileNumber,
      alternativeMobileNumberError:
          alternativeMobileNumberError ?? this.alternativeMobileNumberError,
      isHomeService: isHomeService ?? this.isHomeService,
      dateController: dateController ?? this.dateController,
      dateError: dateError ?? this.dateError,
      TimeError: TimeError ?? this.TimeError,
      selectedDate: selectedDate ?? this.selectedDate,
      TimeController: TimeController ?? this.TimeController,
    );
  }

  @override
  List<Object?> get props => [
        addressError,
        areaError,
        pinCodeError,
        landmarkError,
        allFieldsValid,
        addressController,
        areaController,
        pincodeController,
        landmarkController,
        bookingData,
        mobileController,
        numberError,
        number,
        alternativeMobileNumber,
        alternativeMobileNumberError,
        isHomeService,
        alternativeMobileNumberController,
        dateController,
        dateError,
        selectedDate,
        TimeController,
    TimeError
      ];
}
