
import 'package:equatable/equatable.dart';

import '../../routes/routes_helper.dart';

final class MainScreenState extends Equatable {
  final PageController? pageController;
  final int? index;

  const MainScreenState({this.pageController, this.index});

  MainScreenState copyWith(
      {PageController? pageController,
      int? index}) {
    return MainScreenState(
        pageController: pageController,
        index: index ?? this.index);
  }

  @override
  List<Object?> get props => [
    pageController,
    index
  ];
}
