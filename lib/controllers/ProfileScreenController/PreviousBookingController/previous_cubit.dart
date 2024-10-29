import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sui_daga/controllers/ProfileScreenController/PreviousBookingController/previous_state.dart';

import '../../../models/BookingModel/booking_model.dart';
import '../../../repo/repository.dart';
import '../../../routes/routes_helper.dart';


class PreviousCubit extends Cubit<PreviousState> {
  PreviousCubit() : super(PreviousState());
 final Repo _repo = Repo();

  void getPreviousBooking() {
    _repo.getPreviousBooking().then((value) {
      debugPrint("Previous Booking: $value");
      emit(PreviousState(previousBooking: (value['data'] as List<dynamic>)
          .map((e) => PreviousBooking.fromJson(e as Map<String, dynamic>))
          .toList(),));
    });
  }
}
