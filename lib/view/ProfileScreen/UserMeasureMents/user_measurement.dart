import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/ProfileScreenController/UserMeasureMentController/user_measure_ment_cubit.dart';
import 'package:sui_daga/flavors/config/flavor_config.dart';

import '../../../routes/routes_helper.dart';
import '../../../style/Pallet.dart';
import '../../../style/style.dart';
import '../../../widget/CustomChipSelection/custom_chip_selection.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_textfield.dart';

class UserMeasurement extends StatelessWidget {
  static const id = "/UserMeasurement";

  const UserMeasurement({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            BlocBuilder<UserMeasureMentCubit, UserMeasureMentState>(
              builder: (context, state) {
                return SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: CustomChipSelection(
                    isMultipleSelection: false,
                    onSelected: (List<String> values) {
                      context
                          .read<UserMeasureMentCubit>()
                          .selectMeasureMentItem(
                          0, values, state.profileData!.categoryModel);
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
            BlocBuilder<UserMeasureMentCubit, UserMeasureMentState>(
              builder: (context, state) {
                return Container(
                  width: 89.40,
                  height: 178.60,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("${FlavorConfig().baseUrl}/${state.image}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
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
                  child: BlocBuilder<UserMeasureMentCubit,
                      UserMeasureMentState>(
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
                              .read<UserMeasureMentCubit>()
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
              height: 21,
            ),
            BlocBuilder<UserMeasureMentCubit, UserMeasureMentState>(
              builder: (context, state) {
                debugPrint("Measurement Data: ${state.measurementData}");
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
                            // context
                            //     .read<UserMeasureMentCubit>()
                            //     .onUpdateMeasurementData(
                            //     index, value, context);
                          },
                          keyboardType: TextInputType.number,
                          hintText:
                          "${state.measurementData?[index]['name']}",
                          controller: TextEditingController(),
                        ));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
