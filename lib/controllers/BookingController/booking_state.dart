import 'package:flutter/cupertino.dart';

class BookingState {
  final List<String>? makeBookingItems;
  final List<String>? selectedMakeBookingItem;
  final String? selectedStitchingItem;
  final String? dateError;
  final DateTime? selectedDate;
  final TextEditingController? dateController;
  final TextEditingController? optionalController;
  final String? CategoryId;

  const BookingState( {
    this.optionalController,
     this.dateController,
    this.makeBookingItems = const [
      "Walk-in",
      "Home Service",
    ],
    this.selectedMakeBookingItem = const [],
    this.selectedStitchingItem,
    this.CategoryId,
    this.dateError,
    this.selectedDate,
  });

  BookingState copyWith({
    List<String>? makeBookingItems,
    List<String>? selectedMakeBookingItem,
    String? selectedStitchingItem,
    String? dateError,
    DateTime? selectedDate,
    TextEditingController? dateController,
    TextEditingController? optionalController,
    String? CategoryId,

  }) {
    return BookingState(
      makeBookingItems: makeBookingItems ?? this.makeBookingItems,
      selectedMakeBookingItem:
          selectedMakeBookingItem ?? this.selectedMakeBookingItem,
      selectedStitchingItem: selectedStitchingItem ?? this.selectedStitchingItem,
      dateError: dateError ?? this.dateError,
      selectedDate: selectedDate ?? this.selectedDate, dateController: dateController ?? this.dateController,
      CategoryId: CategoryId ?? this.CategoryId,
      optionalController: optionalController ?? this.optionalController,
    );
  }


}
