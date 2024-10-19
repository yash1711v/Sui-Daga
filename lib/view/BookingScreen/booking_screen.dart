import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sui_daga/controllers/BookingController/booking_cubit.dart';
import 'package:sui_daga/controllers/BookingController/booking_state.dart';
import 'package:sui_daga/view/BookingScreen/SubParts/HomeService/home_service.dart';
import 'package:sui_daga/widget/custom_textfield.dart';

import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';
import '../../style/style.dart';
import '../../widget/CustomChipSelection/custom_chip_selection.dart';
import '../../widget/custom_app_bar.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_calender.dart';
import '../../widget/drop_down.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(412, 221),
        child: CustomAppBar(
          textUnderLogo: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Text(
              "ENQUIRE BOOKING",
              style: Style.h18.copyWith(color: Pallet.primary, fontSize: 16),
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
      body: Column(
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
              'Stitching For',
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
            child: Row(
              children: [
                Expanded(
                  child: CustomDropDown(
                    items: const ["Kurti", "Pant", "Dress", "Gown"],
                    onChanged: (String? value) {},
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              top: 28,
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
            child: Row(
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
                        controller: TextEditingController(text: "dd/mm/yyyy"),
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
                                      child: CustomCalendar(),
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
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              top: 21,
            ),
            child: Text(
              'Make Booking',
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
                return SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: CustomChipSelection(
                    onSelected: (int index) {
                      context.read<BookingCubit>().selectMakeBookingItem(index);
                    },
                    items: state.makeBookingItems ?? [],
                    width: 181,
                    height: 45,
                    scrollDirection: Axis.horizontal,
                    selectedItems: state.selectedMakeBookingItem ?? [],
                  ),
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: BlocBuilder<BookingCubit, BookingState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 16.0, right: 16.0,bottom: 90),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      if (state.selectedMakeBookingItem!.contains(
                          "Home Service")) {
                        Navigator.pushNamed(context, HomeService.id);
                      }
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
