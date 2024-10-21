import 'package:equatable/equatable.dart';

import '../../models/ProfileModel/profile_model.dart';
import '../../routes/routes_helper.dart';

final class MainScreenState extends Equatable {
  final PageController? pageController;
  final int? index;
  final ProfileModel? profileModel;

  const MainScreenState({
    this.pageController,
    this.index,
    this.profileModel,
  });

  MainScreenState copyWith({PageController? pageController, int? index, ProfileModel? profileModel}) {
    return MainScreenState(
        pageController: pageController, index: index ?? this.index,
        profileModel: profileModel ?? this.profileModel);
  }

  @override
  List<Object?> get props => [pageController, index, profileModel];
}
