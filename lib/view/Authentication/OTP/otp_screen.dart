import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sui_daga/controllers/OtpController/otp_cubit.dart';
import 'package:sui_daga/controllers/OtpController/otp_state.dart';

import '../../../routes/routes_helper.dart';
import '../../../style/Pallet.dart';
import '../../../style/style.dart';
import '../../../widget/Helper/widgets.dart';
import '../../../widget/custom_button.dart';

class OtpScreen extends StatelessWidget{
  static const id = "/OtpScreen";

   OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              'OTP Verification',
              style: TextStyle(
                color: Color(0xFFE3C5CF),
                fontSize: 26,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
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
                    "Enter OTP",
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
                    "We have send verification code to you number.",
                    style: Style.h14.copyWith(color: Pallet.grey, fontSize: 14),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            BlocConsumer<OtpCubit, OtpState>(
              listener: (context, state) {},
              builder: (context, state) {
                String? error = state.error ?? "";
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width:400,
                        height: 75,
                        child: PinFieldAutoFill(
                          controller: context.read<OtpCubit>().otpController,
                          cursor:  Cursor(
                            width: 2,
                            height: 28,
                            color: Colors.white,
                            radius: const Radius.circular(1),
                            enabled: true,
                          ),
                          autoFocus: false,
                          codeLength: 4,
                          decoration: BoxLooseDecoration(
                            hintText: "0000",
                            hintTextStyle: Style.h18.copyWith(color: Colors.grey),
                            gapSpace: 18,
                            bgColorBuilder: FixedColorBuilder(Colors.white.withOpacity(0.20000000298023224)),
                              textStyle:
                                  Style.h18.copyWith(fontWeight: FontWeight.w400,color: Colors.grey),
                              radius: const Radius.circular(5),
                              strokeColorBuilder: PinListenColorBuilder(
                                  Colors.white.withOpacity(0.20000000298023224), Colors.white.withOpacity(0.20000000298023224))),
                          // currentCode: state.otp,
                          onCodeSubmitted: (code) {
                            context.read<OtpCubit>().verifyOTP();
                          },
                          onCodeChanged: (code) {
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'If you didn’t receive a code.',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: const Text(
                              'Resend',
                              style: TextStyle(
                                color: Color(0xFFE3C5CF),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                      Visibility(
                        visible: error!.isNotEmpty && error != null,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            error,
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
                child: BlocConsumer<OtpCubit, OtpState>(
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
                  showLoader(context);
                  context.read<OtpCubit>().verifyOTP();
                  if(context.read<OtpCubit>().state.error == ""){
                    Navigator.pushNamed(context, MainScreen.id);
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}
