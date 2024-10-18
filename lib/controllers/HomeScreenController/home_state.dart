import 'package:equatable/equatable.dart';

import '../../models/HomeScreenModels/CategoriesModel/categories_model.dart';
import '../../routes/routes_helper.dart';

final class HomeState extends Equatable {
  final List<CategoriesModel>? categories;
  final PageController? pageController;
  final int? index;

  const HomeState({this.categories, this.pageController, this.index});

  HomeState copyWith(
      {List<CategoriesModel>? categories,
      PageController? pageController,
      int? index}) {
    return HomeState(
        categories: categories ?? this.categories,
        pageController: pageController,
        index: index ?? this.index);
  }

  @override
  List<Object?> get props => [categories, pageController, index];
}
