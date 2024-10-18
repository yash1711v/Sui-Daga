import 'package:flutter_bloc/flutter_bloc.dart';
import '../../routes/routes_helper.dart';
import 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingState()) {
    // Set the default selected item to the first item (index 0)
    if (state.makeBookingItems!.isNotEmpty) {
      selectedMakeBookingItem = [state.makeBookingItems![0]];
    }
  }

  List<String> selectedMakeBookingItem = [];

  void selectMakeBookingItem(int index) {

    if (index < 0 || index > state.makeBookingItems!.length) return;

    selectedMakeBookingItem = [state.makeBookingItems![index]];
     debugPrint("Selected Item: $selectedMakeBookingItem");
    emit(state.copyWith(
      selectedMakeBookingItem: selectedMakeBookingItem,  // Use a copy
      makeBookingItems: state.makeBookingItems,
    ));
  }
}
