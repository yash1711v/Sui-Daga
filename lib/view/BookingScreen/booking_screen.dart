import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sui_daga/controllers/BookingController/booking_cubit.dart';
import 'package:sui_daga/controllers/BookingController/booking_state.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';
import 'package:sui_daga/widget/custom_textfield.dart';

import '../../controllers/BookingController/MeasurementAndDetails/measurement_cubit.dart';
import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';
import '../../style/style.dart';
import '../../widget/CustomChipSelection/custom_chip_selection.dart';
import '../../widget/Helper/widgets.dart';
import '../../widget/custom_app_bar.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_calender.dart';
import '../../widget/drop_down.dart';

class BookingScreen extends StatelessWidget {
  final ProfileModel profileModel;
  final List<String> makeBookingItems;
  const BookingScreen({super.key, required this.profileModel,required this.makeBookingItems });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 36.0,
              ),
              child: Text(
                'We are here to stitch your perfect fit!',
                style: TextStyle(
                  color: Color(0xB2212121),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 11.0,
              ),
              child: Text(
                'Fill the form to step forward with your design',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 22.0,
              ),
              child: Text(
                'Dress to be stitched',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<BookingCubit, BookingState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CustomDropDown(
                              items: makeBookingItems,
                              onChanged: (String? value) {
                                context
                                    .read<BookingCubit>()
                                    .onSelectStitching(value, profileModel);
                                context
                                    .read<MeasurementCubit>()
                                    .selectMeasureMentItem(0, [value ?? "",], profileModel.categoryModel);
                              },
                              hintText: '',
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                          visible: state.selectedStitchingItem != null &&
                              state.selectedStitchingItem!.isNotEmpty,
                          child: Text(
                            state.selectedStitchingItem ?? "",
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
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 15,
              ),
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
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BlocBuilder<BookingCubit, BookingState>(
                builder: (context, state) {
                  return Column(
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
                                  border: Border.all(color: const Color(0xFFF4F4F4)),
                                ),
                                child: CustomTextField(
                                  readOnly: true,
                                  style: const TextStyle(color: Colors.black),
                                  controller: state.dateController ?? TextEditingController(),
                                  hintText: "Select",
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) =>
                                            Dialog(
                                              backgroundColor: Colors.transparent,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 16.0),
                                                child: CustomCalendar(
                                                  onDateSelected: (DateTime date) {
                                                    context
                                                        .read<BookingCubit>()
                                                        .onSelectDate(date);
                                                    Navigator.pop(context);
                                                  },),
                                              ),
                                            ));
                                  },
                                  suffix: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
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
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 21,
              ),
              child: Text(
                'AppointMent Booking',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<BookingCubit, BookingState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: CustomChipSelection(
                      onSelected: (List<String> value) {
                        context.read<BookingCubit>().selectMakeBookingItem(0, value);
                      },
                      items: state.makeBookingItems ?? [],
                      width: 181,
                      height: 45,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      selectedItems: state.selectedMakeBookingItem ?? [],
                      radius: 5,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 15,
              ),
              child: Text(
                'Note (optional)',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BlocBuilder<BookingCubit, BookingState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                width: 380,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF4F4F4),
                                  border: Border.all(color: const Color(0xFFF4F4F4)),
                                ),
                                child: CustomTextField(
                                  readOnly: false,
                                  maxLines: 6,
                                  style: const TextStyle(color: Colors.black),
                                  controller: state.optionalController ?? TextEditingController(),
                                  hintText: "Add additional note here",
                                  onChanged: (value) {
                                    context.read<BookingCubit>().ontypeAddNote(value);
                                  },
        
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
                  );
                },
              ),
            ),
        
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<BookingCubit, BookingState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 90),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      showLoader(context);
                      context.read<BookingCubit>().checkingTheFields(context,
                          profileModel,
                         profileModel.categoryModel,
                           makeBookingItems,);

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
