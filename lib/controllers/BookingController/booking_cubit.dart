import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sui_daga/controllers/BookingController/HomeService/home_service_state.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_cubit.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';

import '../../helpers/Methods/methods.dart';
import '../../models/BookingModel/booking_model.dart';
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

  void selectMakeBookingItem(int index , [List<String>? values]) {
    if(values != null) {
      selectedMakeBookingItem = values;
    } else {
      selectedMakeBookingItem = [state.makeBookingItems![index]];
    }
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

  void onSelectStitching(String? value, ProfileModel profileModel) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(selectedStitchingItem: 'Select measurement'));
    } else {
      profileModel.categoryModel!.forEach((element) {
        if (element.name == value) {
          debugPrint("Category Id: ${element.id}");
          emit(state.copyWith(
              selectedStitchingItem: "", CategoryId: element.id));
        }
      });
    }
  }

  void checkingTheFields(
    BuildContext context, [
    ProfileModel? profileModel,
    List<CategoryModel>? categoryList,
    List<String>? measureMentItems,
  ]) {
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
        addingDataToModel(context, profileModel, categoryList, measureMentItems);
        Navigator.pop(context);
        Navigator.pushNamed(context, MeasurementAndDetails.id);
      }
    }
  }

  void addingDataToModel(  BuildContext context,
      [
    ProfileModel? profileModel,
    List<CategoryModel>? categoryList,
    List<String>? measureMentItems,

  ]) {
    Booking bookingModel = Booking(
      categoryId: state.CategoryId,
      ready_by_date: state.dateController!.text,
      type: state.selectedMakeBookingItem![0],
    );
    context.read<MeasurementCubit>().setMeasurementScreen(
    profileModel,
      categoryList,
      measureMentItems,
      bookingModel,
    );
  }
}
