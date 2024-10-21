import 'package:sui_daga/models/ProfileModel/profile_model.dart';
import 'package:sui_daga/repo/api.dart';

import '../routes/routes_helper.dart';

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

  Future<dynamic> updateData({required ProfileModel profileModel}) async {
    final body = {
      "name": profileModel.name,
      "address": profileModel.address,
      "order_frequency": profileModel.orderFrequency,
      "intrested_dresses": profileModel.intrestedDresses![0],
      "profile_image": profileModel.profileImage,
    };
    debugPrint("body: $body");
    return await _apiCaller.patch("/api/user", body,withToken: true,isMultipart: true);
  }

  Future<dynamic> getCategories() async {
    return await _apiCaller.get("/api/user/category", withToken: true);
  }
  Future<dynamic> getHomeScreenData() async {
    return await _apiCaller.post("/api/user/homepage",{}, withToken: true);
  }
  Future<dynamic> getProfileData() async {
    return await _apiCaller.get("/api/user/profile_details", withToken: true);
  }


}