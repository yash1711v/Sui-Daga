class BookingState {
  final List<String>? makeBookingItems;
  final List<String>? selectedMakeBookingItem;

  BookingState({this.makeBookingItems = const [
    "Visit Shop",
    "Home Service",
  ], this.selectedMakeBookingItem = const []});

  BookingState copyWith({
    List<String>? makeBookingItems,
    List<String>? selectedMakeBookingItem,
  }) {
    return BookingState(
      makeBookingItems: makeBookingItems ?? this.makeBookingItems,
      selectedMakeBookingItem: selectedMakeBookingItem ?? this.selectedMakeBookingItem,
    );
  }
}
