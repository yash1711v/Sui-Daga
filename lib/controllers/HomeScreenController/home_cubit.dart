import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/HomeScreenController/home_state.dart';
import 'package:sui_daga/models/HomeScreenModels/CategoriesModel/categories_model.dart';

import '../../routes/routes_helper.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  PageController pageController = PageController();
  void getHomeData() {
    emit(state.copyWith(
        categories: [
      CategoriesModel(
          categoryName: "Casuals",
          categoryImage: "assets/Images/HomeScreenCategories/image_1.png"),
      CategoriesModel(
          categoryName: "Wedding",
          categoryImage: "assets/Images/HomeScreenCategories/image_2.png"),
      CategoriesModel(
          categoryName: "Dresses",
          categoryImage: "assets/Images/HomeScreenCategories/image_3.png"),
      CategoriesModel(
          categoryName: "Party",
          categoryImage: "assets/Images/HomeScreenCategories/image_4.png"),
      CategoriesModel(
          categoryName: "Ethinic",
          categoryImage: "assets/Images/HomeScreenCategories/image_5.png")
    ],
    pageController: pageController,
    ));
  }
  void changeIndex(int index) {
    pageController.addListener(() {

      emit(state.copyWith(index: state.pageController?.page!.round(),pageController: pageController));
    });
  }
}
