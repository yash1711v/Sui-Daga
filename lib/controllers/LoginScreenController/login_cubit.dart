import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sui_daga/controllers/OtpController/otp_cubit.dart';
import 'package:sui_daga/widget/Helper/widgets.dart';
import '../../repo/repository.dart';
import '../../routes/routes_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());
  final Repo _repo = Repo();


  TextEditingController numberController = TextEditingController();

  Future<void> setUpLoginScreen() async {
    try {
      final value = await SmsAutoFill().hint;
      if (value != null) {
        numberController.text = value;
      }
    } catch (e) {
      debugPrint("error: $e");
    }
  }

  void onNumberChange(String number) {
    final regex = RegExp(r'^[0-9]{10}$');

    if (number.length < 10) {
      emit(LoginState(
          error: "Number must be at least 10 digits", number: number));
    } else if (!regex.hasMatch(number)) {
      emit(LoginState(
          error: "Number must contain only digits and be 10 digits long",
          number: number));
    } else {
      emit(LoginState(number: number)); // Valid number
    }
  }

  void onLogin({required BuildContext context,}) {
    dynamic _vrificationId = "";
    FirebaseAuth auth = FirebaseAuth.instance;
    if(state.number != null && state.number!.length == 10) {
      showLoader(context);
      auth.verifyPhoneNumber(
          phoneNumber: "+91${state.number}",
          verificationCompleted: (
              PhoneAuthCredential cred) {
          },
          verificationFailed: (e) {
            log(e.toString(),name: "error at login screen");
          },
          codeSent: (vrificationId, code) {
            _repo.login(number: (state.number ?? "").trim()).then((value) {
              if (value['status']) {
                _vrificationId = vrificationId;
                context.read<OtpCubit>().setPhoneNumber(state.number ?? "", _vrificationId);
                Navigator.pushReplacementNamed(context, OtpScreen.id);
              } else {
                emit(LoginState(error: "Something went wrong", number: state.number));
              }
            });
          },
          codeAutoRetrievalTimeout: (val) {});

    } else {
      emit(LoginState(error: "Please enter a valid number", number: state.number));
    }
  }
}
