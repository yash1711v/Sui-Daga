import 'package:equatable/equatable.dart';

final class BookingState extends Equatable {
  final List<String>? makeBookingItems;
  final List<String>? selectedMakeBookingItem;

  const BookingState(
      {this.makeBookingItems = const [
        "Home Booking",
        "Visit Shop",
      ],
       this.selectedMakeBookingItem});

  BookingState copyWith({
    List<String>? makeBookingItems,
    List<String>? selectedMakeBookingItem,
  }) {
    return BookingState(
      makeBookingItems: makeBookingItems ?? this.makeBookingItems,
      selectedMakeBookingItem:
          selectedMakeBookingItem ?? this.selectedMakeBookingItem,
    );
  }

  @override
  List<Object?> get props => [
        makeBookingItems,
        selectedMakeBookingItem,
      ];
}
