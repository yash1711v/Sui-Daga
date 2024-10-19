import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/BookingController/booking_cubit.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  PageController pageController = PageController();

  MainScreenCubit() : super(const MainScreenState());

  getMainScreenData() {
    emit(state.copyWith(pageController: pageController, index: 0));
  }

  void changeIndex(int index, BuildContext context) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300), // Set the duration of the animation
      curve: Curves.easeInOut,               // Define the curve for the animation
    );
    if(index == 1) {
      context.read<BookingCubit>().selectMakeBookingItem(0);
    }
    emit(state.copyWith(index: index, pageController: pageController));
  }

  void jumpToBookingScreen() {
    pageController.animateToPage(
      1,
      duration: const Duration(milliseconds: 300), // Set the duration of the animation
      curve: Curves.easeInOut,               // Define the curve for the animation
    );
    emit(state.copyWith(index: 1, pageController: pageController));
  }
}
