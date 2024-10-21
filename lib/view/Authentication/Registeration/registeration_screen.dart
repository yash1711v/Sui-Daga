import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/RegisteratonScreenController/registeration_cubit.dart';
import 'package:sui_daga/controllers/RegisteratonScreenController/registeration_state.dart';
import 'package:sui_daga/widget/custom_button.dart';

import '../../../controllers/BookingController/booking_cubit.dart';
import '../../../routes/routes_helper.dart';
import '../../../style/Pallet.dart';
import '../../../style/style.dart';
import '../../../widget/custom_textfield.dart';
import '../../../widget/drop_down.dart';

class RegisterationScreen extends StatelessWidget {
  static const id = "/RegisterationScreen";
  const RegisterationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(412, 221),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage("assets/Images/appbarBackground.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 94,
              ),
              Text(
                'Let’s Begin Your Journey',
                style: TextStyle(
                  color: Color(0xFFE3C5CF),
                  fontSize: 26,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Fill the details for a quick start',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 39),
            const Text(
              'What’s your name?',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(height: 10),
            BlocBuilder<RegisterationCubit, RegisterationState>(
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
                              controller: context.read<RegisterationCubit>().nameController,
                              focusNode: context.read<RegisterationCubit>().nameFocusNode,
                              hintText: "Full Name",
                              onChanged: (value) {
                                context
                                    .read<RegisterationCubit>().onChangeName(value);
                              },
                            ),
                          ),
                          Visibility(
                            visible: state.nameError != null &&
                                state.nameError!.isNotEmpty,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                state.nameError ?? "",
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
           const  Text(
              'How often do you need custom-made dresses?',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<RegisterationCubit, RegisterationState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomDropDown(
                            items: const ["Monthly", "Quartely", "yearly", "Gown"],
                            onChanged: (String? value) {
                              context
                                  .read<RegisterationCubit>()
                                  .onSelectHowOften(value);
                            },
                            hintText: '',
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                        visible: state.selectedHowOften != null &&
                            state.selectedHowOften!.isNotEmpty,
                        child: Text(
                          state.selectedHowOften ?? "",
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        )),
                  ],
                );
              },
            ),
            const SizedBox(height: 28),
            const  Text(
              'What type of dresses are you most interested in?',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<RegisterationCubit, RegisterationState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomDropDown(
                            items: const ["Casual", "Weeding", "Party", "Gown"],
                            onChanged: (String? value) {
                              context
                                  .read<RegisterationCubit>()
                                  .onSelectTypeOfDress(value);
                            },
                            hintText: '',
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                        visible: state.selectedTypeOfDress != null &&
                            state.selectedTypeOfDress!.isNotEmpty,
                        child: Text(
                          state.selectedTypeOfDress ?? "",
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        )),
                  ],
                );
              },
            ),
            SizedBox(
              height: 28,
            ),
            const Text(
              'Mention your address',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(height: 10),
            BlocBuilder<RegisterationCubit, RegisterationState>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF4F4F4),
                              border: Border.all(
                                  color: const Color(0xFFF4F4F4)),
                            ),
                            child: CustomTextField(
                              maxLines: 4,
                              controller: context.read<RegisterationCubit>().addressController,
                              focusNode: context.read<RegisterationCubit>().addressFocusNode,
                              hintText: "address",
                              onChanged: (value) {
                                context
                                    .read<RegisterationCubit>().onChangeAddress(value);
                              },
                            ),
                          ),
                          Visibility(
                            visible: state.nameError != null &&
                                state.nameError!.isNotEmpty,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                state.nameError ?? "",
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
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 20.0),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {
                  // Navigator.pushNamed(context, MainScreen.id);
                  context.read<RegisterationCubit>().onClickStartJourney(context);
                },
                child: const Text(
                  'Start Journey',
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
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
