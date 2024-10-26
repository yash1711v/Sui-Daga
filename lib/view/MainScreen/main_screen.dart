import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_cubit.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_state.dart';
import 'package:sui_daga/controllers/ProfileScreenController/profile_cubit.dart';
import 'package:sui_daga/view/BookingScreen/booking_screen.dart';
import 'package:upgrader/upgrader.dart';

import '../../models/ProfileModel/profile_model.dart';
import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';
import '../../style/style.dart';
import '../../widget/BottomNavigationBar/bottom_navigation_bar.dart';
import '../../widget/customEndDrawer/custom_end_drawer.dart';
import '../../widget/custom_app_bar.dart';
import '../HomeScreen/home_screen.dart';
import '../ProfileScreen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  static const id = "/MainScreen";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    context.read<MainScreenCubit>().runEvery10Seconds(context);
    return UpgradeAlert(
      dialogStyle: UpgradeDialogStyle.cupertino,
      showIgnore: false,
      showLater: false,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(412, 221),
          child: BlocBuilder<MainScreenCubit, MainScreenState>(
            builder: (context, state) {
              return CustomAppBar(
                textUnderLogo: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Text(
                    state.index == 0
                        ? "WELCOME"
                        : state.index == 1
                            ? "ENQUIRE BOOKING"
                            : "PROFILE",
                    style: Style.h18.copyWith(color: Pallet.primary),
                  ),
                ),
                actionButton: Builder(
                    builder: (context) => IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer();
                            // Add action here
                          },
                          color: Pallet.white,
                        )),
              );
            },
          ),
        ),
        extendBody: true,
        endDrawer: const CustomEndDrawer(),
        body: BlocBuilder<MainScreenCubit, MainScreenState>(
          builder: (context, state) {
            if (state.firtTimeOpen ?? false) {
              context
                  .read<ProfileCubit>()
                  .setProfileScreen(state.profileModel!);
            }
            return PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: state.pageController,
              children: [
                HomeScreen(
                  profileModel: (state.profileModel ?? const ProfileModel()),
                ),
                BookingScreen(
                  profileModel: (state.profileModel ?? const ProfileModel()),
                  makeBookingItems:
                      state.dresses ?? ["Kurti", "Pant", "Dress", "Gown"],
                ),
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
