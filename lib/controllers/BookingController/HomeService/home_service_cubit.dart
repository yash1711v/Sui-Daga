import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_cubit.dart';

import '../../../helpers/Methods/methods.dart';
import '../../../routes/routes_helper.dart';
import 'home_service_state.dart';

class HomeServiceCubit extends Cubit<HomeServiceState> {
  HomeServiceCubit() : super(HomeServiceState());

  TextEditingController addressController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();

  void setHomeServiceScreen() {
    emit(state.copyWith(
      addressController: addressController,
      areaController: areaController,
      pincodeController: pincodeController,
      landmarkController: landmarkController,
    ));
  }

  void resetValues() {
    addressController.clear();
    areaController.clear();
    pincodeController.clear();
    landmarkController.clear();

    addressController.dispose();
    areaController.dispose();
    pincodeController.dispose();
    landmarkController.dispose();

    state.addressError = null;
    state.areaError = null;
    state.pinCodeError = null;
    state.landmarkError = null;

    state.copyWith(
      addressController: addressController,
      areaController: areaController,
      pincodeController: pincodeController,
      landmarkController: landmarkController,
    );
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
      emit(state.copyWith(pinCodeError: "Invalid pin code"));
    } else {
      emit(state.copyWith(pinCodeError: ""));
    }
  }

  void onLandmarkChange(String landmark) {
    final RegExp validLandMarkRegex =
        RegExp(r"^(?=.*[a-zA-Z0-9])[a-zA-Z0-9\s,.'-]+$");
    if (landmark.isEmpty) {
      emit(state.copyWith(landmarkError: "landmark cannot be empty"));
    } else if (!validLandMarkRegex.hasMatch(landmark)) {
      emit(state.copyWith(
          landmarkError: "Invalid landmark. Must include letters or numbers."));
    } else {
      emit(state.copyWith(landmarkError: ""));
    }
  }

  void onAllFieldsValid(BuildContext context) {
    if (state.addressError != null &&
        state.areaError != null &&
        state.pinCodeError != null &&
        state.landmarkError != null) {
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
      } else if (state.pinCodeError != null && state.pinCodeError!.isNotEmpty) {
        vibratePhone();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.pinCodeError ?? ""),
          ),
        );
      } else if (state.landmarkError != null &&
          state.landmarkError!.isNotEmpty) {
        vibratePhone();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.landmarkError ?? ""),
          ),
        );
      } else {
        context.read<MeasurementCubit>().resetValues();
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
          landmarkError: "Landmark cannot be empty"));
    }
  }
}
