import 'package:flutter_bloc/flutter_bloc.dart';
import 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingState());

  List<String> selectedBookingItems = [
  ];
  void selectMakeBookingItem(int index) {
    if(selectedBookingItems.contains(state.makeBookingItems![index])){
        selectedBookingItems.remove(state.makeBookingItems![index]);
        emit(state.copyWith(selectedMakeBookingItem: selectedBookingItems,makeBookingItems: state.makeBookingItems));
      } else {
        selectedBookingItems.add(state.makeBookingItems![index]);
        emit(state.copyWith(selectedMakeBookingItem: selectedBookingItems,makeBookingItems: state.makeBookingItems));
    }
  }
}
