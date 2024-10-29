import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sui_daga/controllers/BookingController/HomeService/home_service_cubit.dart';
import 'package:sui_daga/controllers/BookingController/HomeService/home_service_state.dart';
import 'package:sui_daga/widget/custom_button.dart';
import 'package:sui_daga/widget/custom_calender.dart';
import 'package:sui_daga/widget/custom_textfield.dart';

import '../../../../routes/routes_helper.dart';
import '../../../../style/Pallet.dart';
import '../../../../style/style.dart';
import '../../../../widget/customEndDrawer/custom_end_drawer.dart';
import '../../../../widget/custom_app_bar.dart';
import '../../../MapsScreen/maps_screen.dart';

class HomeService extends StatefulWidget {
  static const id = "/HomeService";

  const HomeService({super.key});

  @override
  State<HomeService> createState() => _HomeServiceState();
}

class _HomeServiceState extends State<HomeService> {
  final ScrollController _scrollController = ScrollController();

  final FocusNode _addressFocus = FocusNode();
  final FocusNode _mobileFocus = FocusNode();
  final FocusNode _alternativeMobileNumber = FocusNode();
  final FocusNode _areaFocus = FocusNode();
  final FocusNode _pincodeFocus = FocusNode();
  final FocusNode _landmarkFocus = FocusNode();

  // Function to scroll to a specific widget
  void _scrollToField(BuildContext context, FocusNode focusNode) {
    Future.delayed(const Duration(milliseconds: 300), () {
      // Ensure the ScrollController and widget are attached to the screen
      if (_scrollController.hasClients) {
        RenderObject? object = focusNode.context?.findRenderObject();
        if (object is RenderBox) {
          double offset = object.localToGlobal(Offset.zero).dy;
          double screenHeight = MediaQuery.of(context).size.height;

          // Scroll just enough so the field is fully visible but not too far
          double scrollAmount = offset - screenHeight / 2;
          _scrollController.animateTo(
            _scrollController.offset + scrollAmount,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _addressFocus.dispose();
    _areaFocus.dispose();
    _pincodeFocus.dispose();
    _landmarkFocus.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(412, 221),
        child: BlocBuilder<HomeServiceCubit, HomeServiceState>(
          builder: (context, state) {
            return CustomAppBar(
              textUnderLogo: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: GestureDetector(
                  onTap: () {
                    context.read<HomeServiceCubit>().resetValues();
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios,
                              color: Pallet.white)),
                      Text(
                        (state.isHomeService ?? true)
                            ? "Home Booking"
                            : "Visit Shop",
                        style: Style.h18
                            .copyWith(color: Pallet.primary, fontSize: 16),
                      ),
                    ],
                  ),
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
      endDrawer: const CustomEndDrawer(
        isMainScreen: false,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 37),
                const Text(
                  'Fill Details',
                  style: TextStyle(
                    color: Color(0xB2212121),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 25),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.isHomeService ?? true,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                onPressed: () {
                                  // Handle next action
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => MapScreen()));
                                },
                                child: const Text(
                                  'Use Current Location',
                                  style: TextStyle(
                                    color: Color(0xFF212121),
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 25));
                  },
                ),
                const Text(
                  'House Address',
                  style: TextStyle(
                    color: Color(0xB2212121),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 10),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF4F4F4),
                                  border: Border.all(
                                      color: const Color(0xFFF4F4F4)),
                                ),
                                child: CustomTextField(
                                  controller: state.addressController ??
                                      TextEditingController(),
                                  focusNode: _addressFocus,
                                  hintText: "Address",
                                  onChanged: (value) {
                                    context
                                        .read<HomeServiceCubit>()
                                        .onAddressChange(value);
                                  },
                                  onTap: () {
                                    _scrollToField(context, _addressFocus);
                                  },
                                ),
                              ),
                              Visibility(
                                visible: state.addressError != null &&
                                    state.addressError!.isNotEmpty,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    state.addressError ?? "",
                                    style: Style.h14.copyWith(
                                        color: Pallet.red, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 28));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                    builder: (context, state) {
                  return Visibility(
                      visible: state.isHomeService ?? true,
                      child: const Text(
                        'Area',
                        style: TextStyle(
                          color: Color(0xB2212121),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ));
                }),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 10));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.isHomeService ?? true,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF4F4F4),
                                    border: Border.all(
                                        color: const Color(0xFFF4F4F4)),
                                  ),
                                  child: CustomTextField(
                                    controller: state.areaController ??
                                        TextEditingController(),
                                    focusNode: _areaFocus,
                                    hintText: "Area",
                                    onChanged: (value) {
                                      context
                                          .read<HomeServiceCubit>()
                                          .onAreaChange(value);
                                    },
                                    onTap: () =>
                                        _scrollToField(context, _areaFocus),
                                  ),
                                ),
                                Visibility(
                                  visible: state.areaError != null &&
                                      state.areaError!.isNotEmpty,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      state.areaError ?? "",
                                      style: Style.h14.copyWith(
                                          color: Pallet.red, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 28));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                    builder: (context, state) {
                  return Visibility(
                      visible: state.isHomeService ?? true,
                      child: const Text(
                        'PinCode',
                        style: TextStyle(
                          color: Color(0xB2212121),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ));
                }),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 10));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.isHomeService ?? true,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF4F4F4),
                                    border: Border.all(
                                        color: const Color(0xFFF4F4F4)),
                                  ),
                                  child: CustomTextField(
                                    controller: state.pincodeController ??
                                        TextEditingController(),
                                    focusNode: _pincodeFocus,
                                    maxLength: 6,
                                    inputFormatters: [
                                      NumericTextInputFormatter()
                                    ],
                                    hintText: "Pincode",
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      context
                                          .read<HomeServiceCubit>()
                                          .onPinCodeChange(value);
                                    },
                                    onTap: () =>
                                        _scrollToField(context, _pincodeFocus),
                                  ),
                                ),
                                Visibility(
                                  visible: state.pinCodeError != null &&
                                      state.pinCodeError!.isNotEmpty,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      state.pinCodeError ?? "",
                                      style: Style.h14.copyWith(
                                          color: Pallet.red, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 10));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.isHomeService ?? true,
                      child: const Text(
                        'Landmark (optional)',
                        style: TextStyle(
                          color: Color(0xB2212121),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 10));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.isHomeService ?? true,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF4F4F4),
                                    border: Border.all(
                                        color: const Color(0xFFF4F4F4)),
                                  ),
                                  child: CustomTextField(
                                    controller: state.landmarkController ??
                                        TextEditingController(),
                                    focusNode: _landmarkFocus,
                                    hintText: "Landmark",
                                    onChanged: (value) {
                                      context
                                          .read<HomeServiceCubit>()
                                          .onLandmarkChange(value);
                                    },
                                    onTap: () =>
                                        _scrollToField(context, _landmarkFocus),
                                  ),
                                ),
                                Visibility(
                                  visible: state.landmarkError != null &&
                                      state.landmarkError!.isNotEmpty,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      state.landmarkError ?? "",
                                      style: Style.h14.copyWith(
                                          color: Pallet.red, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 28));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: !(state.isHomeService ?? true),
                        child: const SizedBox(height: 28));
                  },
                ),
                const Text(
                  'Mobile Number',
                  style: TextStyle(
                    color: Color(0xB2212121),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 10),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF4F4F4),
                                  border: Border.all(
                                      color: const Color(0xFFF4F4F4)),
                                ),
                                child: CustomTextField(
                                  maxLength: 10,
                                  keyboardType: TextInputType.phone,
                                  inputFormatters: [
                                    NumericTextInputFormatter()
                                  ],
                                  controller: state.mobileController ??
                                      TextEditingController(),
                                  focusNode: _mobileFocus,
                                  hintText: "Mobile Number",
                                  onChanged: (value) {
                                    context
                                        .read<HomeServiceCubit>()
                                        .onNumberChange(value);
                                  },
                                  onTap: () {
                                    _scrollToField(context, _mobileFocus);
                                  },
                                ),
                              ),
                              Visibility(
                                visible: state.numberError != null &&
                                    state.numberError!.isNotEmpty,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    state.numberError ?? "",
                                    style: Style.h14.copyWith(
                                        color: Pallet.red, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 28),
                const Text(
                  'Alternative Mobile Number',
                  style: TextStyle(
                    color: Color(0xB2212121),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 10));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF4F4F4),
                                  border: Border.all(
                                      color: const Color(0xFFF4F4F4)),
                                ),
                                child: CustomTextField(
                                  maxLength: 10,
                                  keyboardType: TextInputType.phone,
                                  inputFormatters: [
                                    NumericTextInputFormatter()
                                  ],
                                  controller:
                                      state.alternativeMobileNumberController ??
                                          TextEditingController(),
                                  focusNode: _alternativeMobileNumber,
                                  hintText: "Alternative Mobile Number",
                                  onChanged: (value) {
                                    context
                                        .read<HomeServiceCubit>()
                                        .onAlternativeMobileNumberChange(value);
                                  },
                                  onTap: () {
                                    _scrollToField(
                                        context, _alternativeMobileNumber);
                                  },
                                ),
                              ),
                              Visibility(
                                visible: state.alternativeMobileNumberError !=
                                        null &&
                                    state.alternativeMobileNumberError!
                                        .isNotEmpty,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    state.alternativeMobileNumberError ?? "",
                                    style: Style.h14.copyWith(
                                        color: Pallet.red, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                        visible: state.isHomeService ?? true,
                        child: const SizedBox(height: 28));
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.isHomeService ?? true,
                      child: Text(
                        'Ready On',
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.isHomeService ?? true,
                      child: const SizedBox(
                        height: 10,
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeServiceCubit, HomeServiceState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.isHomeService ?? true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    width: 380,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF4F4F4),
                                      border: Border.all(
                                          color: const Color(0xFFF4F4F4)),
                                    ),
                                    child: CustomTextField(
                                      readOnly: true,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      controller: state.dateController ??
                                          TextEditingController(),
                                      hintText: "Select",
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => Dialog(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 16.0),
                                                    child: CustomCalendar(
                                                      onDateSelected:
                                                          (DateTime date) {
                                                        context
                                                            .read<
                                                                HomeServiceCubit>()
                                                            .onSelectDate(date);
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ),
                                                ));
                                      },
                                      suffix: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: SvgPicture.asset(
                                          "assets/Images/Icons/calender_icon.svg",
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          Visibility(
                              visible: state.dateError != null &&
                                  state.dateError!.isNotEmpty,
                              child: Text(
                                state.dateError ?? "",
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                ),
                              )),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BlocBuilder<HomeServiceCubit, HomeServiceState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      // Handle next action
                      context
                          .read<HomeServiceCubit>()
                          .onAllFieldsValid(context);
                    },
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
