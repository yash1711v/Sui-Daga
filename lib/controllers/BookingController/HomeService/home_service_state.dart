import 'package:equatable/equatable.dart';

import '../../../models/BookingModel/booking_model.dart';
import '../../../routes/routes_helper.dart';

final class HomeServiceState extends Equatable {
  String? addressError;
  String? areaError;
  String? pinCodeError;
  String? landmarkError;

  final bool? allFieldsValid;
  final Booking? bookingData;

  final TextEditingController? addressController;
  final TextEditingController? areaController;
  final TextEditingController? pincodeController;
  final TextEditingController? landmarkController;

   HomeServiceState( {
    this.addressError,
    this.areaError,
    this.pinCodeError,
    this.landmarkError,
    this.allFieldsValid = false,
    this.addressController,
    this.areaController,
    this.pincodeController,
    this.landmarkController,
     this.bookingData,
  });

  HomeServiceState copyWith({
    String? addressError,
    String? areaError,
    String? pinCodeError,
    String? landmarkError,
    bool? allFieldsValid,
    TextEditingController? addressController,
    TextEditingController? areaController,
    TextEditingController? pincodeController,
    TextEditingController? landmarkController,
    Booking? bookingData,
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
      bookingData: bookingData ?? this.bookingData,
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
      ];
}
