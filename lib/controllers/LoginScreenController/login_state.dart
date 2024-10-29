part of 'login_cubit.dart';


final class LoginState extends Equatable {
  final String? error;
  final String? number;

  const LoginState({this.error,this.number, });

  LoginState copyWith({String? error, String? number}) {
    return LoginState(error: error ?? this.error, number: number ?? this.number);
  }

  @override
  List<Object?> get props => [error, number];
}
