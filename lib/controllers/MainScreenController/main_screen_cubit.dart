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

 void getMainScreenData(BuildContext context,[int? index]) async {
    String? token = await _pref.getString("Token");
    if(token != null) {
      _repo.getProfileData().then((value) {
        ProfileModel profileModel = ProfileModel.fromJson(value['data']);
        _repo.getHomeScreenData().then((value) {
          List<CategoryModel> categoryModel = [];
          for (var item in value['data']['category']) {
            categoryModel.add(CategoryModel.fromJson(item));
          }
          List<BannerModel> upperBanner = [];
          for (var item in value['data']['upper_banner']){
            upperBanner.add(BannerModel.fromJson(item));
          }
          List<BannerModel> lowerBanner = [];
          for (var item in value['data']['lower_banner']){
            lowerBanner.add(BannerModel.fromJson(item));
          }
          List<BannerModel> middleBanner = [];
          for (var item in value['data']['middle_banner']){
            middleBanner.add(BannerModel.fromJson(item));
          }

          List<BannerModel> collectionBanner = [];
          for (var item in value['data']['collection_banner']){
            collectionBanner.add(BannerModel.fromJson(item));
          }

          profileModel = profileModel.copyWith(categoryModel: categoryModel, upperBanner: upperBanner, middleBanner: middleBanner, lowerBanner: lowerBanner, collectionBanner: collectionBanner);

          emit(state.copyWith(profileModel: profileModel, pageController: pageController, index: index ?? 0, firtTimeOpen: true));

          addDresses(profileModel);
        });

      });
    } else {
      emit(state.copyWith(pageController: pageController, index: 0, firtTimeOpen: false));
    }

  }

  void setProfileModel(ProfileModel profileModel,[int? index]) {
    _repo.getHomeScreenData().then((value) {
      List<CategoryModel> categoryModel = [];
      for (var item in value['data']['category']) {
        categoryModel.add(CategoryModel.fromJson(item));
      }
      profileModel = profileModel.copyWith(categoryModel: categoryModel);
      emit(state.copyWith(profileModel: profileModel, pageController: pageController, index: index ?? 0));
      addDresses(profileModel);
    });
  }


  void addDresses(ProfileModel profileModel) {
    List<String> dresses = [];
    List<CategoryModel>? categoryModel = profileModel.categoryModel;
    for (var item in (categoryModel ?? [CategoryModel()])) {
      dresses.add(item.name!);
    }
    emit(state.copyWith(dresses: dresses,profileModel: profileModel, pageController: pageController));
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

  void runEvery10Seconds(BuildContext context) {
    Future.delayed(const Duration(seconds: 60), () {
      getMainScreenData(context, state.index);
      runEvery10Seconds(context);
    });
  }
}
