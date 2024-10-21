import 'package:sui_daga/repo/api.dart';

class Repo {
  ApiCaller _apiCaller = ApiCaller();


  Future<dynamic> login({required String number}) async {
    final body = {
      "phone_number": number,
    };
    return await _apiCaller.post("/api/user", body,);
  }

  Future<dynamic> otp({required String otp,required String phoneNumber}) async {
    final body = {
      "phone_number": phoneNumber,
      "otp": otp,
    };
    return await _apiCaller.post("/api/user/otp_verify", body,);
  }


}