import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  PageController pageController = PageController();

  MainScreenCubit() : super(const MainScreenState());

  getMainScreenData() {
    emit(state.copyWith(pageController: pageController, index: 0));
  }

  void changeIndex(int index) {
    pageController.jumpToPage(index);
    emit(state.copyWith(index: index, pageController: pageController));
  }
}
