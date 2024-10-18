import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../controllers/LoginScreenController/login_cubit.dart';
import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';
import '../../style/style.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  static const id = "/LoginScreenController";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Pallet.secondary, Pallet.secondary2],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(
              height: 115,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/Images/logoImage.svg",
                  width: 262,
                  height: 70,
                ),
              ],
            ),
            const SizedBox(
              height: 95,
            ),
            const Text(
              "Login/Register",
              style: TextStyle(
                  color: Pallet.primary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 22,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 170.0),
              child: Divider(
                color: Pallet.primary,
                thickness: 1,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter your Phone Number",
                    style: Style.h14
                        .copyWith(color: Pallet.background, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "You'll get a verification code from us.",
                    style: Style.h14.copyWith(color: Pallet.grey, fontSize: 14),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {},
              builder: (context, state) {
                String? error = state.error;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.20000000298023224),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 5,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: CustomTextField(
                          style: Style.h14.copyWith(color: Pallet.white),
                          controller: numberController,
                          hintText: "Enter your phone number",
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          inputFormatters: [NumericTextInputFormatter()],
                          prefix: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 16.0),
                            child: Text(
                              "+91 |",
                              style: TextStyle(
                                color: Pallet.white.withOpacity(0.5),
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            context.read<LoginCubit>().onNumberChange(value);
                          },
                        ),
                      ),
                      Visibility(
                        visible: error != null && error.isNotEmpty,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            error ?? "",
                            style: Style.h14
                                .copyWith(color: Pallet.red, fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const Spacer(),
            SizedBox(
              width: 380,
              height: 48,
              child: CustomButton(
                child: BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return const Text(
                      "Continue",
                      style: TextStyle(
                          color: Pallet.background,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    );
                  },
                ),
                onPressed: () {
                  // Navigator.pushNamed(context, OtpScreen.id);
                  context.read<LoginCubit>().onLogin(context: context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
