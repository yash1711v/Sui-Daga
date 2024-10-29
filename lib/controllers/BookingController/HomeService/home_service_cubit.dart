import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_cubit.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_state.dart';

import '../../../helpers/Methods/methods.dart';
import '../../../models/BookingModel/booking_model.dart';
import '../../../routes/routes_helper.dart';
import 'home_service_state.dart';

class HomeServiceCubit extends Cubit<HomeServiceState> {
  HomeServiceCubit() : super(HomeServiceState());

  TextEditingController addressController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController alternativeMobileNumber = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TimeOfDay _selectedTime = TimeOfDay.now();

  void setHomeServiceScreen([Booking? bookingData, bool? isHomeService]) {
    emit(state.copyWith(
      addressController: addressController,
      areaController: areaController,
      pincodeController: pincodeController,
      landmarkController: landmarkController,
      bookingData: bookingData ?? state.bookingData,
      mobileController: mobileController,
      isHomeService: isHomeService ?? state.isHomeService,
      dateController: dateController,
      alternativeMobileNumberController: alternativeMobileNumber,
      TimeController: TextEditingController(text: _formatTime(_selectedTime)),
    ));
  }

  void resetValues() {
    addressController.clear();
    areaController.clear();
    pincodeController.clear();
    landmarkController.clear();
    mobileController.clear();
    alternativeMobileNumber.clear();

    state.addressError = null;
    state.areaError = null;
    state.pinCodeError = null;
    state.landmarkError = null;
    state.numberError = null;
    state.alternativeMobileNumberError = null;
    state.alternativeMobileNumber = null;
    state.number = null;
    state.isHomeService = true;
    state.dateError = null;
    state.TimeError = null;

    emit(state.copyWith(
      addressController: addressController,
      areaController: areaController,
      pincodeController: pincodeController,
      landmarkController: landmarkController,
      mobileController: mobileController,
      alternativeMobileNumberController: alternativeMobileNumber,
      isHomeService: true,
      number: null,
      alternativeMobileNumber: null,
      numberError: null,
      alternativeMobileNumberError: null,
      dateError: null,
      TimeError: null,
    ));
  }

  void onAddressChange(String address) {
    address = address.trim();

    final RegExp validAddressRegex =
        RegExp(r"^(?=.*[a-zA-Z0-9])[a-zA-Z0-9\s,.'-]+$");

    if (address.isEmpty) {
      emit(state.copyWith(addressError: "Address cannot be empty"));
    } else if (!validAddressRegex.hasMatch(address)) {
      emit(state.copyWith(
          addressError: "Invalid address. Must include letters or numbers."));
    } else {
      emit(state.copyWith(addressError: ""));
    }
  }

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      _selectedTime = pickedTime;
      debugPrint(_formatTime(_selectedTime));
      emit(state.copyWith(
          TimeController:
              TextEditingController(text: _formatTime(_selectedTime)),
          TimeError: "")); // Update selected time
    }
  }

  String _formatTime(TimeOfDay time) {
    // Format time to 12-hour format
    String hour =
        time.hour > 12 ? (time.hour - 12).toString() : time.hour.toString();
    String minute =
        time.minute.toString().padLeft(2, '0'); // Add leading zero if needed
    String period = time.hour >= 12 ? 'PM' : 'AM'; // Determine AM/PM

    // Handle midnight and noon
    hour = hour == '0' ? '12' : hour;

    return "$hour:$minute $period"; // Return formatted time
  }

  void onNumberChange(String number) {
    final regex = RegExp(r'^[0-9]{10}$');

    if (number.length < 10) {
      debugPrint("Number must be at least 10 digits");
      emit(state.copyWith(
          numberError:
              "Number must contain only digits and be 10 digits long"));
    } else if (!regex.hasMatch(number)) {
      emit(state.copyWith(
          numberError: "Number must contain only digits and be 10 digits long",
          number: number));
    } else {
      emit(state.copyWith(number: number, numberError: "")); // Valid number
    }
  }

  void onAlternativeMobileNumberChange(String number) {
    final regex = RegExp(r'^[0-9]{10}$');

    if (number.length < 10) {
      debugPrint("Number must be at least 10 digits");
      emit(state.copyWith(
          alternativeMobileNumberError:
              "Number must contain only digits and be 10 digits long"));
    } else if (!regex.hasMatch(number)) {
      emit(state.copyWith(
          alternativeMobileNumberError:
              "Number must contain only digits and be 10 digits long",
          alternativeMobileNumber: number));
    } else {
      alternativeMobileNumber.text = number;
      emit(state.copyWith(
          alternativeMobileNumber: number,
          alternativeMobileNumberError: "",
          alternativeMobileNumberController:
              alternativeMobileNumber)); // Valid number
    }
  }

  void onSelectDate(DateTime date) {
    dateController?.text = DateFormat('dd/MM/yyyy').format(date);
    emit(state.copyWith(
      selectedDate: date,
      dateController: dateController,
      dateError: "",
    ));
  }

  void onAreaChange(String area) {
    area = area.trim();

    final RegExp validAreaRegex =
        RegExp(r"^(?=.*[a-zA-Z0-9])[a-zA-Z0-9\s,.'-]+$");

    if (area.isEmpty) {
      emit(state.copyWith(areaError: "Area cannot be empty"));
    } else if (!validAreaRegex.hasMatch(area)) {
      emit(state.copyWith(
          areaError: "Invalid area. Must include letters or numbers."));
    } else {
      emit(state.copyWith(areaError: ""));
    }
  }

  void onPinCodeChange(String pinCode) {
    pinCode = pinCode.trim();
    final RegExp pinCodeRegex = RegExp(r'^[1-9][0-9]{5}$');

    if (pinCode.isEmpty) {
      emit(state.copyWith(pinCodeError: "Pin code cannot be empty"));
    } else if (!pinCodeRegex.hasMatch(pinCode)) {
      emit(state.copyWith(
          pinCodeError: "Invalid pin code",
          pincodeController: pincodeController));
    } else {
      emit(state.copyWith(pinCodeError: ""));
    }
  }

  void onLandmarkChange(String landmark) {}

  void onAllFieldsValid(BuildContext context) {
    if (state.isHomeService ?? true) {
      if (state.addressError != null &&
          state.areaError != null &&
          state.pinCodeError != null &&
          state.numberError != null &&
          state.alternativeMobileNumberError != null &&
          state.dateError != null &&
          state.TimeError != null) {
        if (state.addressError != null && state.addressError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.addressError ?? ""),
            ),
          );
        } else if (state.areaError != null && state.areaError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.areaError ?? ""),
            ),
          );
        } else if (state.pinCodeError != null &&
            state.pinCodeError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.pinCodeError ?? ""),
            ),
          );
        } else if (state.TimeError != null && state.TimeError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Time is required"),
            ),
          );
        } else if (state.dateError != null && state.dateError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Date is required"),
            ),
          );
        } else if (state.numberError != null && state.numberError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.numberError ?? ""),
            ),
          );
        } else if (state.alternativeMobileNumberError != null &&
            state.alternativeMobileNumberError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.alternativeMobileNumberError ?? ""),
            ),
          );
        } else {
          Booking booking = state.bookingData!.copyWith(
            address: Address(
              houseAddress: addressController.text,
              area: areaController.text,
              pincode: pincodeController.text,
              landmark: landmarkController.text,
            ),
            mobileNumbers: MobileNumbers(
              mobileNumber: mobileController.text,
              altMobileNumber: alternativeMobileNumber.text,
              availableDate: dateController.text,
              availableTime: _formatTime(_selectedTime),
            ),
          );

          context
              .read<MeasurementCubit>()
              .setBookingModelFromHomeService(booking);
          Navigator.pushNamed(context, MeasurementAndDetails.id);
        }
      } else {
        vibratePhone();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("All fields are required"),
          ),
        );
        emit(state.copyWith(
          addressError: "Address cannot be empty",
          areaError: "Area cannot be empty",
          pinCodeError: "Pin code cannot be empty",
          dateError: "Select date",
          TimeError: "Select time",
          numberError: "Mobile number cannot be empty",
          alternativeMobileNumberError:
              "Alternative Mobile number cannot be empty",
        ));
      }
    } else {
      if (state.addressError != null &&
          state.numberError != null &&
          state.alternativeMobileNumberError != null) {
        if (state.addressError != null && state.addressError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.addressError ?? ""),
            ),
          );
        } else if (state.numberError != null && state.numberError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.numberError ?? ""),
            ),
          );
        } else if (state.alternativeMobileNumberError != null &&
            state.alternativeMobileNumberError!.isNotEmpty) {
          vibratePhone();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.alternativeMobileNumberError ?? ""),
            ),
          );
        } else {
          Booking booking = state.bookingData!.copyWith(
            address: Address(
              houseAddress: addressController.text,
              area: areaController.text,
              pincode: "",
              landmark: "",
            ),
            mobileNumbers: MobileNumbers(
              mobileNumber: mobileController.text,
              altMobileNumber: alternativeMobileNumber.text,
              availableDate: dateController.text,
              availableTime: _formatTime(_selectedTime),
            ),
          );

          context
              .read<MeasurementCubit>()
              .setBookingModelFromHomeService(booking);
          Navigator.pushNamed(context, MeasurementAndDetails.id);
        }
      } else {
        vibratePhone();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("All fields are required"),
          ),
        );
        emit(state.copyWith(
          addressError: "Address cannot be empty",
          numberError: "Mobile number cannot be empty",
          alternativeMobileNumberError:
              "Alternative Mobile number cannot be empty",
        ));
      }
    }
  }
}
