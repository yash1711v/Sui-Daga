import 'package:equatable/equatable.dart';

import '../../models/ProfileModel/profile_model.dart';
import '../../routes/routes_helper.dart';

final class MainScreenState extends Equatable {
  final PageController? pageController;
  final int? index;
  final ProfileModel? profileModel;
  final bool? firtTimeOpen;
  final List<String>? dresses;
  final BuildContext? context;

  const MainScreenState({
    this.pageController,
    this.index,
    this.profileModel,
    this.firtTimeOpen,
    this.dresses,
    this.context,
  });

  MainScreenState copyWith({
    PageController? pageController,
    int? index,
    ProfileModel? profileModel,
    bool? firtTimeOpen,
    List<String>? dresses,
    BuildContext? context,
  }) {
    return MainScreenState(
      pageController: pageController,
      index: index ?? this.index,
      profileModel: profileModel ?? this.profileModel,
      firtTimeOpen: firtTimeOpen ?? this.firtTimeOpen,
      dresses: dresses ?? this.dresses,
      context: context ?? this.context,
    );
  }

  @override
  List<Object?> get props =>
      [pageController, index, profileModel, firtTimeOpen, dresses, context];
}
