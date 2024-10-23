import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_cubit.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_state.dart';
import 'package:sui_daga/controllers/ProfileScreenController/profile_cubit.dart';
import 'package:sui_daga/view/BookingScreen/booking_screen.dart';
import 'package:upgrader/upgrader.dart';

import '../../models/ProfileModel/profile_model.dart';
import '../../routes/routes_helper.dart';
import '../../widget/BottomNavigationBar/bottom_navigation_bar.dart';
import '../HomeScreen/home_screen.dart';
import '../ProfileScreen/profile_screen.dart';

class MainScreen extends StatelessWidget {
  static const id = "/MainScreen";

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    context.read<MainScreenCubit>().runEvery10Seconds(context);
    return UpgradeAlert(
      dialogStyle: UpgradeDialogStyle.cupertino,
      showIgnore: false,
      showLater: false,
      child: Scaffold(
        extendBody: true,
        body: BlocBuilder<MainScreenCubit, MainScreenState>(
          builder: (context, state) {
            if(state.firtTimeOpen ?? false) {
              context.read<ProfileCubit>().setProfileScreen(state.profileModel!);
            }
            if(state.profileModel == null) {
             return const Center(child: CircularProgressIndicator(),);
            }
            return PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: state.pageController,
              children: [
                HomeScreen(profileModel: (state.profileModel ?? ProfileModel()),),
                BookingScreen(profileModel: (state.profileModel ?? ProfileModel()), makeBookingItems: state.dresses ?? ["Kurti", "Pant", "Dress", "Gown"],),
                const ProfileScreen(),
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<MainScreenCubit, MainScreenState>(
          builder: (context, state) {
            return CustomBottomNavigationBar(
              currentPage: state.index ?? 0,
              scrollController: scrollController,
              onTap: (int i) {
                context.read<MainScreenCubit>().changeIndex(i, context);
              },
            );
          },
        ),
      ),
    );
  }
}
