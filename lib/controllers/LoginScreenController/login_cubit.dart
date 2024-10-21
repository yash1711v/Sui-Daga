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
        numberController.text = value;}
    } catch (e) {
      debugPrint("error: $e");
    }
  }
  void onNumberChange(String number) {
    final regex = RegExp(r'^[0-9]{10}$');

    if (number.length < 10) {
      emit(LoginState(error: "Number must be at least 10 digits",number: number ));
    } else if (!regex.hasMatch(number)) {
      emit( LoginState(error: "Number must contain only digits and be 10 digits long",number: number));
    } else {
      emit( LoginState(number: number)); // Valid number
    }
  }

  void onLogin({required BuildContext context,}) {
    if(state.number != null && state.number!.length == 10) {
      showLoader(context);
      _repo.login(number: (state.number ?? "").trim()).then((value) {
        if (value['status']) {
          context.read<OtpCubit>().setPhoneNumber(state.number ?? "");
          Navigator.pushReplacementNamed(context, OtpScreen.id);
        } else {
          emit(LoginState(error: "Something went wrong", number: state.number));
        }
      });
    } else {
      emit(LoginState(error: "Please enter a valid number", number: state.number));
    }
  }
}
