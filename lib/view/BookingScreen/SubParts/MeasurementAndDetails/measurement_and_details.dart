import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_cubit.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_state.dart';
import 'package:sui_daga/widget/custom_textfield.dart';

import '../../../../routes/routes_helper.dart';
import '../../../../style/Pallet.dart';
import '../../../../style/style.dart';
import '../../../../widget/CustomChipSelection/custom_chip_selection.dart';
import '../../../../widget/custom_app_bar.dart';
import '../../../../widget/custom_button.dart';
import '../../../../widget/drop_down.dart';

class MeasurementAndDetails extends StatelessWidget {
  static const id = "/MeasurementAndDetails";

  MeasurementAndDetails({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size(412, 221),
        child: CustomAppBar(
          textUnderLogo: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: GestureDetector(
              onTap: () {
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
                    "Measurement Details",
                    style:
                    Style.h18.copyWith(color: Pallet.primary, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          actionButton: IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Add action here
            },
            color: Pallet.white,
          ),
        ),
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
                  'Measurement Details',
                  style: TextStyle(
                    color: Color(0xB2212121),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                const Text(
                  'Select Measurements',
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 10),
                BlocBuilder<MeasurementCubit, MeasurementState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomDropDown(
                                items: const [
                                  "Previous Measurements",
                                  "Add New Measurements"
                                ],
                                onChanged: (String? value) {
                                  context
                                      .read<MeasurementCubit>()
                                      .onSelectMeasurement(value);
                                },
                                hintText: "Select",
                              ),
                              Visibility(
                                  visible: state.selectMeasureMentError !=
                                      null &&
                                      state.selectMeasureMentError!.isNotEmpty,
                                  child: Text(
                                    state.selectMeasureMentError ?? "",
                                    style: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 23,
                ),
                BlocBuilder<MeasurementCubit, MeasurementState>(
                  builder: (context, state) {
                    return SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: CustomChipSelection(
                        onSelected: (int index) {
                          context
                              .read<MeasurementCubit>()
                              .selectMeasureMentItem(index);
                        },
                        items: state.measureMentItems ?? [],
                        width: 80,
                        height: 0,
                        scrollDirection: Axis.horizontal,
                        selectedItems: state.selectedMeasureMentItems ?? [],
                        radius: 100,
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 23,
                ),
                Row(
                  children: [
                    const Text(
                      'Measurement Detail',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 62.03,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.transparent, // Transparent background
                        border: Border.all(color: Colors.black), // Black border
                        borderRadius: BorderRadius.circular(
                            0), // Optional: Rounded corners
                      ),
                      child: DropdownButton<String>(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        hint: const Text(
                          'CM',
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ), // Text color for the hint
                        ),
                        items: <String>['CM', 'M']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                color: Color(0xFF212121),
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ), // Text color for dropdown items
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                        iconSize: 18,
                        underline: const SizedBox(),
                        // Hides the default underline
                        isExpanded:
                        true, // Makes dropdown take full width// Optional: Makes the dropdown transparent
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                Row(
                  children: [
                    Expanded(
                      child: BlocBuilder<MeasurementCubit, MeasurementState>(
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onLengthChange(value);
                                    },
                                    keyboardType: TextInputType.number,
                                    controller: state.lengthController ?? TextEditingController(),
                                    hintText: "Length",
                                  )),
                              Visibility(
                                visible: state.lengthError != null &&
                                    state.lengthError!.isNotEmpty,
                                child: Text(
                                  state.lengthError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 15), // Spacing between columns
                    Expanded(
                      child: BlocBuilder<MeasurementCubit, MeasurementState>(
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    keyboardType: TextInputType.number,
                                    controller: state.chestController ?? TextEditingController(),
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onChestChange(value);
                                    },
                                    hintText: "Chest",
                                  )),
                              Visibility(
                                visible: state.chestError != null &&
                                    state.chestError!.isNotEmpty,
                                child: Text(
                                  state.chestError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),

                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10), // Spacing between rows

                // Row 2 - Waist and Hip
                Row(
                  children: [
                    BlocBuilder<MeasurementCubit, MeasurementState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onWaistChange(value);
                                    },
                                    controller: state.waistController ?? TextEditingController(),
                                    hintText: "Waist",
                                  )),
                              Visibility(
                                visible: state.waistError != null &&
                                    state.waistError!.isNotEmpty,
                                child: Text(
                                  state.waistError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15), // Spacing between columns
                    BlocBuilder<MeasurementCubit, MeasurementState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onHipChange(value);
                                    },
                                    keyboardType: TextInputType.number,
                                    controller: state.hipController ?? TextEditingController(),
                                    hintText: "Hip",
                                  )),

                              Visibility(
                                visible: state.hipError != null &&
                                    state.hipError!.isNotEmpty,
                                child: Text(
                                  state.hipError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 10), // Spacing between rows

                // Row 3 - Shoulder and Arm
                Row(
                  children: [
                    BlocBuilder<MeasurementCubit, MeasurementState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onShoulderChange(value);
                                    },
                                    keyboardType: TextInputType.number,
                                    controller: state.shoulderController ?? TextEditingController(),
                                    hintText: "Shoulder",
                                  )),
                              Visibility(
                                visible: state.shoulderError != null &&
                                    state.shoulderError!.isNotEmpty,
                                child: Text(
                                  state.shoulderError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15), // Spacing between columns
                    BlocBuilder<MeasurementCubit, MeasurementState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onArmChange(value);
                                    },
                                    controller: state.armController ?? TextEditingController(),
                                    hintText: "Arm",
                                  )),

                              Visibility(
                                visible: state.armError != null &&
                                    state.armError!.isNotEmpty,
                                child: Text(
                                  state.armError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 10), // Spacing between rows

                // Row 4 - Wrist and Sleeves
                Row(
                  children: [
                    BlocBuilder<MeasurementCubit, MeasurementState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onWristChange(value);
                                    },
                                    controller: state.wristController ?? TextEditingController(),
                                    hintText: "Wrist",
                                  )),
                              Visibility(
                                visible: state.wristError != null &&
                                    state.wristError!.isNotEmpty,
                                child: Text(
                                  state.wristError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15), // Spacing between columns
                    BlocBuilder<MeasurementCubit, MeasurementState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onSleetsChange(value);
                                    },
                                    controller: state.sleetsController ?? TextEditingController(),
                                    hintText: "Sleeves",
                                  )),
                              Visibility(
                                visible: state.sleetsError != null &&
                                    state.sleetsError!.isNotEmpty,
                                child: Text(
                                  state.sleetsError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 10), // Spacing between rows

                // Row 5 - Collar and Daman
                Row(
                  children: [
                    BlocBuilder<MeasurementCubit, MeasurementState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    keyboardType: TextInputType.number,
                                    controller: state.colarController ?? TextEditingController(),
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onColarChange(value);
                                    },
                                    hintText: "Collar",
                                  )),
                              Visibility(
                                visible: state.colarError != null &&
                                    state.colarError!.isNotEmpty,
                                child: Text(
                                  state.colarError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15), // Spacing between columns
                    BlocBuilder<MeasurementCubit, MeasurementState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4)),
                                  child: CustomTextField(
                                    onChanged: (value) {
                                      context
                                          .read<MeasurementCubit>()
                                          .onDamanChange(value);
                                    },
                                    keyboardType: TextInputType.number,
                                    controller: state.damanController ?? TextEditingController(),
                                    hintText: "Daman",
                                  )),
                              Visibility(
                                visible: state.damanError != null &&
                                    state.damanError!.isNotEmpty,
                                child: Text(
                                  state.damanError ?? "",
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {
                  // Handle next action
                  context.read<MeasurementCubit>().onCheckAllValues(context);
                },
                child: const Text(
                  'REQUEST BOOKING',
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
  }
}
