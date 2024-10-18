import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../routes/routes_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());
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
    Navigator.pushReplacementNamed(context, MainScreen.id);
  }
}
