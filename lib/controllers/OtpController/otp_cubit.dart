import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sui_daga/controllers/ProfileScreenController/profile_cubit.dart';
import 'package:sui_daga/controllers/RegisteratonScreenController/registeration_cubit.dart';

import '../../cache/shared_preference.dart';
import '../../models/ProfileModel/profile_model.dart';
import '../../repo/repository.dart';
import '../../routes/routes_helper.dart';
import '../../view/Authentication/Registeration/registeration_screen.dart';
import '../../widget/Helper/widgets.dart';
import '../MainScreenController/main_screen_cubit.dart';
import 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> with CodeAutoFill {
  OtpCubit() : super(const OtpState());
  TextEditingController otpController = TextEditingController();
  String phoneNumber = "";
  String? _verificationId = "";
  final Repo _repo = Repo();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void setUpOtpScreen() {

    SmsAutoFill().getAppSignature.then((signature) {
      debugPrint('signature $signature');
    });
    SmsAutoFill().listenForCode();
  }

  void setPhoneNumber(String number,String? id) {
    phoneNumber = number;
    _verificationId = id!;
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

  Future<void> verifyOTP(BuildContext? context) async {
    showLoader(context!);
    String otp = otpController.text;
    if (otp.toString().trim().length == 6) {
      if (_verificationId != null) {
        // Create credential using verification ID and OTP
        final credential = PhoneAuthProvider.credential(
          verificationId: _verificationId!,
          smsCode: otpController.text,
        );

        try {
          // Sign in using the credential
          await _auth.signInWithCredential(credential);
          _repo.otp(otp: "1234", phoneNumber: phoneNumber).then((value) {
            if (value['status']) {
              Pref().pref.setString("Token", value['data']['token']);
              ProfileModel profileModel =
                  ProfileModel.fromJson(value['data']['user']);
              debugPrint("profileModel ${profileModel}");
              _repo.getCategories().then((value){
                List<CategoryModel> categoryModel = [];
                for (var item in value['data']) {
                  categoryModel.add(CategoryModel.fromJson(item));
                }
                profileModel = profileModel.copyWith(categoryModel: categoryModel);
                context.read<ProfileCubit>().setProfileScreen(profileModel);
                context.read<RegisterationCubit>().addDresses(profileModel.categoryModel!,profileModel);
                context.read<MainScreenCubit>().setProfileModel(profileModel);

                if(profileModel.newUser){
                  Navigator.pushReplacementNamed(context, RegisterationScreen.id,arguments: profileModel);
                } else {
                  Navigator.pushReplacementNamed(context, MainScreen.id);
                }
              });
            } else {
              emit(state.copyWith(error: "Something went wrong", otp: otp));
            }
            emit(state.copyWith(error: "", otp: otp));
          });
        } catch (e) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to verify OTP: $e'),
            ),
          );
          print('Failed to verify OTP: $e');
        }
      } else {
        print('Verification ID is null');
      }

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
