import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/ProfileScreenController/UserMeasureMentController/user_measure_ment_cubit.dart';
import 'package:sui_daga/flavors/config/flavor_config.dart';
import 'package:sui_daga/widget/customEndDrawer/custom_end_drawer.dart';
import 'package:sui_daga/widget/custom_button.dart';

import '../../../models/ProfileModel/profile_model.dart';
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
    return BlocBuilder<UserMeasureMentCubit, UserMeasureMentState>(
      builder: (context, state) {


        if ( state.profileData == null || state.measureMentItems == null || state.measurementData == null || state.image == null || state.measurementData!.isEmpty) {

          return const Center(child: CircularProgressIndicator());
        }
        return Scaffold(
          extendBody: true,
          appBar: PreferredSize(
            preferredSize: const Size(412, 200),
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
                      SizedBox(width: 85,),
                      Text(
                        "Measurement Details",
                        style: Style.h18
                            .copyWith(color: Pallet.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          endDrawer: const CustomEndDrawer(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  BlocBuilder<UserMeasureMentCubit, UserMeasureMentState>(
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: Visibility(
                          visible: state.measureMentItems != null,
                          child: CustomChipSelection(
                            isMultipleSelection: false,
                            onSelected: (List<String> values) {
                              ProfileModel profileModel = state.profileData ?? ProfileModel();
                              if(profileModel.categoryModel!.isNotEmpty){
                                context
                                    .read<UserMeasureMentCubit>()
                                    .selectMeasureMentItem(0, values,
                                    profileModel.categoryModel);
                              }
                            },
                            items: state.measureMentItems ?? [],
                            width: 80,
                            height: 0,
                            scrollDirection: Axis.horizontal,
                            selectedItems: state.selectedMeasureMentItems ?? [],
                            radius: 100,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  BlocBuilder<UserMeasureMentCubit, UserMeasureMentState>(
                    builder: (context, state) {
                      return Visibility(
                        visible: state.image != null,
                        child: Container(
                          width: 89.40,
                          height: 178.60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: state.image == null
                                  ? const AssetImage(
                                      "assets/Images/HomeScreenCategories/creation_5.png")
                                  : NetworkImage(
                                      "${FlavorConfig().baseUrl}/${state.image}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 21,
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
                          color: Colors.transparent,
                          // Transparent background
                          border: Border.all(color: Colors.black),
                          // Black border
                          borderRadius: BorderRadius.circular(
                              0), // Optional: Rounded corners
                        ),
                        child: BlocBuilder<UserMeasureMentCubit,
                            UserMeasureMentState>(
                          builder: (context, state) {
                            return DropdownButton<String>(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 9),
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
                              items: <String>[
                                'CM',
                                'In'
                              ].map<DropdownMenuItem<String>>((String value) {
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
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 3.5,
                          // Width to height ratio
                          crossAxisCount: 2,
                          // Two elements per row
                          crossAxisSpacing: 10,
                          // Horizontal space between items
                          mainAxisSpacing: 7, // Vertical space between rows
                        ),
                        itemCount: state.measurementData?.length ?? 1,
                        // Total of 10 items (5 rows, 2 items per row)
                        itemBuilder: (context, index) {
                          return Container(
                              height: 45,
                              decoration:
                                  const BoxDecoration(color: Color(0xFFF4F4F4)),
                              child: CustomTextField(
                                prefix: state.measurementData?[index]
                                            ['image'] ==
                                        null
                                    ? Image.asset(
                                        "assets/Images/Icons/measurement_icon.png")
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(top: 7.0),
                                        child: Image.network(
                                            "${FlavorConfig().baseUrl}/${state.measurementData?[index]['image']}"),
                                      ),
                                onChanged: (value) {
                                  context
                                      .read<UserMeasureMentCubit>()
                                      .onUpdateMeasurementData(
                                          index, value, context);
                                },
                                keyboardType: TextInputType.number,
                                hintText:
                                    "${state.measurementData?[index]['name']}",
                                controller: TextEditingController(
                                    text: state.measurementData?[index]
                                        ['value']),
                              ));
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar:
              BlocBuilder<UserMeasureMentCubit, UserMeasureMentState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                          child: const Text(
                            'UPDATE CHANGES',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          onPressed: () {
                            context.read<UserMeasureMentCubit>().updateChanges(
                                context,
                                state.profileData!.categoryModel ?? []);
                          }),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
