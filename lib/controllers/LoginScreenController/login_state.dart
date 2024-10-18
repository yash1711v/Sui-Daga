part of 'login_cubit.dart';


final class LoginState extends Equatable {
  final String? error;

  const LoginState({this.error,});

  LoginState copyWith({String? error}) {
    return LoginState(error: error ?? this.error);
  }

  @override
  List<Object?> get props => [error];
}
