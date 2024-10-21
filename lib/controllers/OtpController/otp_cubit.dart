import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sui_daga/controllers/ProfileScreenController/profile_cubit.dart';

import '../../cache/shared_preference.dart';
import '../../models/ProfileModel/profile_model.dart';
import '../../repo/repository.dart';
import '../../routes/routes_helper.dart';
import '../../view/Authentication/Registeration/registeration_screen.dart';
import '../../widget/Helper/widgets.dart';
import 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> with CodeAutoFill {
  OtpCubit() : super(const OtpState());
  TextEditingController otpController = TextEditingController();
  String phoneNumber = "";
  final Repo _repo = Repo();

  void setUpOtpScreen() {
    listenForCode();
    SmsAutoFill().getAppSignature.then((signature) {
      debugPrint('signature $signature');
    });
  }

  void setPhoneNumber(String number) {
    phoneNumber = number;
  }

  @override
  void codeUpdated() {
    try {
      if (code != null) {
        otpController.text = code!;
        verifyOTP(null);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void verifyOTP(BuildContext? context) {
    showLoader(context!);
    String otp = otpController.text;
    if (otp.toString().trim().length == 4) {
      _repo.otp(otp: otp, phoneNumber: phoneNumber).then((value) {
        if (value['status']) {
          Pref().pref.setString("Token", value['data']['token']);
          ProfileModel profileModel =
              ProfileModel.fromJson(value['data']['user']);
          context.read<ProfileCubit>().setProfileScreen(profileModel);
          if (profileModel.newUser) {
            Navigator.pushReplacementNamed(context, RegisterationScreen.id);
          } else {
            Navigator.pushReplacementNamed(context, MainScreen.id);
          }
        } else {
          emit(state.copyWith(error: "Something went wrong", otp: otp));
        }
        emit(state.copyWith(error: "", otp: otp));
      });
    } else {
      emit(state.copyWith(error: "please enter valid otp", otp: otp));
    }
  }

  void changeOtp(String? code) {
    if (code != null && code.isEmpty) {
      emit(state.copyWith(error: "please enter valid otp"));
    } else {
      emit(state.copyWith(error: null));
    }
  }
}
