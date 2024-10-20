import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sui_daga/controllers/BookingController/HomeService/home_service_state.dart';

import '../../helpers/Methods/methods.dart';
import '../../routes/routes_helper.dart';
import 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(const BookingState()) {
    // Set the default selected item to the first item (index 0)
    if (state.makeBookingItems!.isNotEmpty) {
      selectedMakeBookingItem = [state.makeBookingItems![0]];
    }
  }

  TextEditingController dateController = TextEditingController();
  List<String> selectedMakeBookingItem = [];

  void setBookingScreen() {
    emit(state.copyWith(dateController: dateController));
  }

  void selectMakeBookingItem(int index) {
    if (index < 0 || index > state.makeBookingItems!.length) return;

    selectedMakeBookingItem = [state.makeBookingItems![index]];
    emit(state.copyWith(
      selectedMakeBookingItem: selectedMakeBookingItem, // Use a copy
      makeBookingItems: state.makeBookingItems,
    ));
  }

  void onSelectDate(DateTime date) {
    state.dateController?.text = DateFormat('dd/MM/yyyy').format(date);
    emit(state.copyWith(
      selectedDate: date,
      dateError: "",
    ));
  }

  void onSelectStitching(String? value) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(selectedStitchingItem: 'Select measurement'));
    } else {
      emit(state.copyWith(selectedStitchingItem: ""));
    }
  }

  void checkingTheFields(BuildContext context) {
    if (state.selectedStitchingItem == null || state.selectedDate == null) {
      if (state.selectedStitchingItem == null) {
        emit(state.copyWith(selectedStitchingItem: 'Select measurement'));
      }

      if (state.selectedDate == null) {
        emit(state.copyWith(dateError: 'Select date'));
      }
      vibratePhone();
      Navigator.pop(context);
    } else {
      if (state.selectedMakeBookingItem!.contains("Home Service")) {
        Navigator.pop(context);
        Navigator.pushNamed(context, HomeService.id);
      } else {
        Navigator.pop(context);
        Navigator.pushNamed(context, MeasurementAndDetails.id);
      }
    }
  }

}
