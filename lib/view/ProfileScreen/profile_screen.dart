import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sui_daga/controllers/ProfileScreenController/UserMeasureMentController/user_measure_ment_cubit.dart';
import 'package:sui_daga/controllers/ProfileScreenController/profile_cubit.dart';
import 'package:sui_daga/controllers/ProfileScreenController/profile_state.dart';
import 'package:sui_daga/flavors/config/flavor_config.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';

import 'package:sui_daga/widget/custom_textfield.dart';

import '../../cache/shared_preference.dart';
import '../../controllers/MainScreenController/main_screen_cubit.dart';
import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';
import '../../style/style.dart';
import '../../widget/custom_app_bar.dart';
import 'AllPreviousBookings/previous_booking.dart';
import 'UserMeasureMents/user_measurement.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    context.read<MainScreenCubit>().setProfileModel(
                        state.profileModel!, 2);
                    return GestureDetector(
                      onTap: () {
                        context.read<ProfileCubit>().setProfilePic(context);
                      },
                      child: CircleAvatar(
                        radius: 48,
                        backgroundImage: state.profileModel!.profileImage ==
                            null
                            ? const AssetImage(
                            "assets/Images/dummyProfileImage.png")
                            : NetworkImage("${FlavorConfig().baseUrl}/${state
                            .profileModel!.profileImage!}"),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    return Text(
                      state.profileModel!.name,
                      style: Style.h18.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    return Text(
                      state.profileModel!.number.toString(),
                      style: Style.h18.copyWith(
                        color: const Color(0xB2212121),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    );
                  },
                ),

              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        width: 380,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(0),
                          border:
                          Border.all(width: 0, color: const Color(0xFFF2F2F2)),
                        ),
                        child: BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, state) {
                            return ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all<
                                      Color>(
                                      const Color(0xFFF2F2F2)),
                                  shape:
                                  WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              0),
                                          side: const BorderSide(
                                              color: Color(0xFFF2F2F2)))),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text(
                                      'Measurements',
                                      style: TextStyle(
                                        color: Color(0xFF212121),
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF212121),
                                      size: 15,
                                    )
                                  ],
                                ),
                                onPressed: () {
                                  context.read<UserMeasureMentCubit>().getProfiledate(state.profileModel ?? ProfileModel());
                                  Navigator.of(context).pushNamed(UserMeasurement.id);
                                });
                          },
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        width: 380,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(0),
                          border:
                          Border.all(width: 0, color: const Color(0xFFF2F2F2)),
                        ),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  const Color(0xFFF2F2F2)),
                              shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: const BorderSide(
                                          color: Color(0xFFF2F2F2)))),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Previous Bookings',
                                  style: TextStyle(
                                    color: Color(0xFF212121),
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF212121),
                                  size: 15,
                                )
                              ],
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                  PreviousBookingScreen.id);
                            }),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 380,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.black.withOpacity(0.1599999964237213),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'USER DETAILS',
                    style: TextStyle(
                      color: Color(0x7F212121),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        width: 380,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: const Color(0x0CE3C5CF),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Colors.black.withOpacity(
                                  0.10000000149011612),
                            ),
                          ),
                        ),
                        child: CustomTextField(
                            focusNode: context
                                .read<ProfileCubit>()
                                .nameFocusNode,
                            hintText: 'Edit your name',
                            onChanged: (value) {
                              context.read<ProfileCubit>().onChangeName(value);
                            },
                            suffix: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SvgPicture.asset(
                                  "assets/Images/editIcon.svg"),
                            ),
                            controller: context
                                .read<ProfileCubit>()
                                .nameController),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Number',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        width: 380,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: const Color(0x0CE3C5CF),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Colors.black.withOpacity(
                                  0.10000000149011612),
                            ),
                          ),
                        ),
                        child: CustomTextField(
                            focusNode: context
                                .read<ProfileCubit>()
                                .numberFocusNode,
                            readOnly: true,
                            hintText: 'Edit your Number',
                            controller: context
                                .read<ProfileCubit>()
                                .numberController),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Address',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        width: 380,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: const Color(0x0CE3C5CF),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Colors.black.withOpacity(
                                  0.10000000149011612),
                            ),
                          ),
                        ),
                        child: CustomTextField(
                            focusNode: context
                                .read<ProfileCubit>()
                                .addressFocusNode,

                            maxLines: 50,
                            readOnly: false,
                            hintText: 'Edit your address',
                            suffix: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SvgPicture.asset(
                                  "assets/Images/editIcon.svg"),
                            ),
                            onChanged: (value) {
                              context.read<ProfileCubit>().onChangeAddress(
                                  value);
                            },
                            controller: context
                                .read<ProfileCubit>()
                                .addressControler),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 90),
        child: Row(
          children: [
            Expanded(
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          const Color(0xFFE22D2D)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side:
                              const BorderSide(color: Color(0xFFE22D2D)))),
                    ),
                    onPressed: () {
                      context.read<ProfileCubit>().logOut(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/Images/Icons/logoutIcon.svg"),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Logout",
                          style: Style.h12.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}

extension on ProfileCubit {
  void logOut(BuildContext context) {
    Pref().pref.clear();
    if (Platform.isAndroid) {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.id, (route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.id, (route) => false);
    }
  }
}
