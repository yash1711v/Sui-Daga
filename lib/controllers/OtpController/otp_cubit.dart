import 'package:bloc/bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../routes/routes_helper.dart';
import 'otp_state.dart';


class OtpCubit extends Cubit<OtpState>  with CodeAutoFill{
  OtpCubit() : super(OtpState());
  TextEditingController otpController = TextEditingController();

  void setUpOtpScreen() {
    listenForCode();
    SmsAutoFill().getAppSignature.then((signature) {
      debugPrint('signature $signature');
    });
  }

  @override
  void codeUpdated() {
    try {
      if (code != null) {
        otpController.text = code!;
        verifyOTP();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  void verifyOTP() {
    String otp = otpController.text;

    if (otp.toString().trim().length == 4) {
      emit(state.copyWith(error: ""));
    } else {
      emit(state.copyWith(error: "please enter valid otp"));
    }
  }

  void changeOtp(String? code) {
    if(code != null && code.isEmpty){
      emit(state.copyWith(error: "please enter valid otp"));
    } else {
      emit(state.copyWith(error: null));
    }
  }
}
