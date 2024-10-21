import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/BookingController/booking_cubit.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_state.dart';

import '../../cache/shared_preference.dart';
import '../../models/ProfileModel/profile_model.dart';
import '../../repo/repository.dart';
import '../ProfileScreenController/profile_cubit.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  PageController pageController = PageController();

  MainScreenCubit() : super(const MainScreenState());
  final Repo _repo = Repo();
  final _pref = Pref().pref;

  getMainScreenData(BuildContext context) {
    if(_pref.getString("Token") != null) {
      _repo.getProfileData().then((value) {
        ProfileModel profileModel = ProfileModel.fromJson(value['data']);
        _repo.getHomeScreenData().then((value) {
          List<CategoryModel> categoryModel = [];
          for (var item in value['data']['category']) {
            categoryModel.add(CategoryModel.fromJson(item));
          }
          profileModel = ProfileModel(categoryModel: categoryModel);
          debugPrint("profileModel: $profileModel");
          emit(state.copyWith(profileModel: profileModel, pageController: pageController, index: 0));
        });

      });
    } else {

    }
    emit(state.copyWith(pageController: pageController, index: 0));
  }

  void setProfileModel(ProfileModel profileModel, BuildContext context) {
    _repo.getHomeScreenData().then((value) {
      List<CategoryModel> categoryModel = [];
      for (var item in value['data']['category']) {
        categoryModel.add(CategoryModel.fromJson(item));
      }
      profileModel = profileModel.copyWith(categoryModel: categoryModel);
      context.read<ProfileCubit>().setProfileScreen(profileModel);
      emit(state.copyWith(profileModel: profileModel, pageController: pageController, index: 0));
    });
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
    context.read<ProfileCubit>().setProfileScreen(state.profileModel ?? ProfileModel());
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
