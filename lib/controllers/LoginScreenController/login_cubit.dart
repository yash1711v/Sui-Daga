import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../routes/routes_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());


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
      emit(const LoginState(error: "Number must be at least 10 digits"));
    } else if (!regex.hasMatch(number)) {
      emit(const LoginState(error: "Number must contain only digits and be 10 digits long"));
    } else {
      emit(const LoginState()); // Valid number
    }
  }

  void onLogin({required BuildContext context,}) {
    // Login logic
    Navigator.pushReplacementNamed(context, OtpScreen.id);
  }
}
