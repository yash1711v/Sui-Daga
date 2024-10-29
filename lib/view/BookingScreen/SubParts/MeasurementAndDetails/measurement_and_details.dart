import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_cubit.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_state.dart';
import 'package:sui_daga/widget/customEndDrawer/custom_end_drawer.dart';
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
                context.read<MeasurementCubit>().resetValues();
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        context.read<MeasurementCubit>().resetValues();
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
          actionButton: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                  // Add action here
                },
                color: Pallet.white,
              )),
        ),
      ),
      endDrawer: const CustomEndDrawer(isMainScreen: false,),
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
                                selectedValue: state.selectedMeasurementType ??
                                    "Add New Measurements",
                                items: const [
                                  "Previous Measurements",
                                  "Add New Measurements"
                                ],
                                onChanged: (String? value) {
                                  context
                                      .read<MeasurementCubit>()
                                      .onSelectMeasurement(value, context);
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
                        isMultipleSelection: false,
                        onSelected: (List<String> values) {
                          context
                              .read<MeasurementCubit>()
                              .selectMeasureMentItem(
                                  0, values, state.categoryList);
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
                      child: BlocBuilder<MeasurementCubit, MeasurementState>(
                        builder: (context, state) {
                          return DropdownButton<String>(
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
                            value: state.measurementUnit,
                            items: <String>['CM', 'In']
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
                            onChanged: (String? newValue) {
                              context
                                  .read<MeasurementCubit>()
                                  .onChangeMeasurementUnit(newValue ?? "CM");
                            },
                            iconSize: 18,
                            underline: const SizedBox(),
                            // Hides the default underline
                            isExpanded:
                                true, // Makes dropdown take full width// Optional: Makes the dropdown transparent
                          );
                        },
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
                BlocBuilder<MeasurementCubit, MeasurementState>(
                  builder: (context, state) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 3.5, // Width to height ratio
                        crossAxisCount: 2, // Two elements per row
                        crossAxisSpacing: 10, // Horizontal space between items
                        mainAxisSpacing: 7, // Vertical space between rows
                      ),
                      itemCount: state.measurementData?.length ?? 1,
                      // Total of 10 items (5 rows, 2 items per row)
                      itemBuilder: (context, index) {
                        return Container(
                            decoration:
                                const BoxDecoration(color: Color(0xFFF4F4F4)),
                            child: CustomTextField(
                              onChanged: (value) {
                                context
                                    .read<MeasurementCubit>()
                                    .onUpdateMeasurementData(
                                        index, value, context);
                              },
                              keyboardType: TextInputType.number,
                              hintText:
                                  "${state.measurementData?[index]['name']}",
                              controller: TextEditingController(text: state
                                      .measurementData?[index]['value'] ??
                                  ""),
                            ));
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 55,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BlocBuilder<MeasurementCubit, MeasurementState>(
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
                          .read<MeasurementCubit>()
                          .onCheckAllValues(context);
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
          );
        },
      ),
    );
  }
}
