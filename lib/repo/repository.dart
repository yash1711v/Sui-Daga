import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:sui_daga/models/BookingModel/booking_model.dart';
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
      "intrested_dresses": profileModel.intrestedDresses![0] ?? [],
      "profile_image": profileModel.profileImage,
    };
    return await _apiCaller.patch("/api/user", body,withToken: true,isMultipart: true);
  }

  Future<dynamic> updateProfilePhoto({required ProfileModel profileModel}) async {
    return await _apiCaller.uploadProfileData(profileModel);
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

  Future<dynamic> makeBooking({required Booking bookingData}) async {
    DateFormat dateFormat = DateFormat("dd/MM/yyyy");

    // Constructing measurement details as a proper list of maps
    List<Map<String, dynamic>> measurementDetails = bookingData.measurementDetails!
        .map((detail) => {
      "categoryId": detail.categoryId,
      "name": detail.name,
      "value": detail.value,
    })
        .toList();
    final body = {
      "category_id": bookingData.categoryId,
      "ready_by_date": dateFormat.parse(bookingData.ready_by_date ?? "").toString(),
      "measurement_unit": bookingData.measurementUnit == "In" ? "inch" : "cm",
      "type": bookingData.type == "Home Service" ? "home_booking" : "visit_shop",
      "address":  bookingData.type == "Home Service" ?{
        "house_address": bookingData.address!.houseAddress,
        "area": bookingData.address!.area,
        "pincode": bookingData.address!.pincode,
        "landmark": bookingData.address!.landmark,
      } : {
        "house_address": bookingData.address!.houseAddress,
        "area": bookingData.address!.area,
        "pincode": bookingData.address!.pincode,
        "landmark": bookingData.address!.landmark,
      },
      // Attaching the constructed list
      "measurement_details": measurementDetails,
    };

    // Debugging: Print the body before making the API call
    return await _apiCaller.post("/api/user/booking", body, withToken: true);
  }



}