import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mime/mime.dart';
import '../cache/shared_preference.dart';
import '../flavors/config/flavor_config.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

import '../models/ProfileModel/profile_model.dart'; // For File class
import 'package:http_parser/http_parser.dart';  // For setting contentType

class ApiCaller {
  final String _baseUrl = FlavorConfig().baseUrl ?? "";
  final _pref = Pref().pref;
  Dio dio = Dio();

  Future<dynamic> post(String url, dynamic data,
      {bool withToken = false, Map<String, String>? query}) async
  {
    var responseJson;
    try {
      final Map<String, String> header = {
        'Content-Type': 'application/json',
      };
      if (withToken) {
        header["Authorization"] = "Bearer ${_pref.getString("Token") ?? ''}";
      }

      final response = await dio.post(Uri.parse('$_baseUrl$url').toString(),
          options: Options(headers: header), data: jsonEncode(data));
      responseJson = response.data;

    } on SocketException {
      debugPrint('No Internet connection');
    } catch (e) {
      debugPrint(e.toString());
    }

    return responseJson;
  }

  Future<dynamic> get(String url,
      {bool withToken = false, Map<String, String>? query}) async {
    var responseJson;
    try {
      final Map<String, String> header = {
        'Content-Type': 'application/json',
      };
      if (withToken) {
        header["Authorization"] = "Bearer ${_pref.getString("Token") ?? ''}";
      }
      final response = await dio.get(Uri.parse('$_baseUrl$url').toString(),
          options: Options(headers: header),);
      responseJson = response.data;
    } on SocketException {
      debugPrint('No Internet connection');
    } catch (e) {
      debugPrint(e.toString());
    }

    return responseJson;
  }

  Future<dynamic> patch(String url, dynamic data,
      {bool withToken = false, Map<String, String>? query, bool isMultipart = false}) async
  {
    var responseJson;
    try {
      final Map<String, String> header = {
        'Content-Type': isMultipart ? 'multipart/form-data' : 'application/json',
      };
      if (withToken) {
        header["Authorization"] = "Bearer ${_pref.getString("Token") ?? ''}";
      }

      Response response;

      if (isMultipart) {
        FormData formData = FormData();
        data.forEach((key, value) async {
          if (value is String && value.contains('/')) {
            // Assuming file paths are strings, we add them as files
            formData.fields.add(MapEntry(key, value));
            ;
          } else {
          // Add regular text fields
          formData.fields.add(MapEntry(key, value.toString()));
          }
        });
        debugPrint('FormData: ${formData.fields}');
        response = await dio.patch(
          Uri.parse('$_baseUrl$url').toString(),
          options: Options(headers: header),
          data: formData,
        );
        debugPrint('Response: ${response.data}');
      } else {
        // For standard JSON requests
        response = await dio.patch(
          Uri.parse('$_baseUrl$url').toString(),
          options: Options(headers: header),
          data: jsonEncode(data),
        );
      }

      responseJson = response.data;
    } on SocketException {
      debugPrint('No Internet connection');
    } catch (e) {
      debugPrint(e.toString());
    }

    return responseJson;
  }
  // For setting contentType

  Future<void> uploadProfileData(ProfileModel profileModel) async {
    final url = Uri.parse('$_baseUrl/api/user');  // Your API endpoint

    // Create the multipart request
    var request = http.MultipartRequest('PATCH', url);

    // Add headers if needed
    request.headers['Authorization'] = "Bearer ${_pref.getString("Token") ?? ''}";

    // Add text fields
    request.fields['name'] = profileModel.name ?? '';
    request.fields['address'] = profileModel.address ?? '';
    request.fields['order_frequency'] = profileModel.orderFrequency.toString();
    request.fields['intrested_dresses'] = profileModel.intrestedDresses != null && profileModel.intrestedDresses!.isNotEmpty
        ? profileModel.intrestedDresses![0]['_id'].toString()  // Send only the ID
        : '';

    // Add the profile image file if it exists
    if (profileModel.profileImage != null && profileModel.profileImage!.isNotEmpty) {
      var mimeType = lookupMimeType(profileModel.profileImage!);  // Detect MIME type (e.g., image/jpeg)
      var file = await http.MultipartFile.fromPath(
        'profile_image',  // Field name expected by the backend
        profileModel.profileImage!,  // File path
        contentType: MediaType.parse(mimeType!),  // Set MIME type explicitly
      );
      request.files.add(file);
    }

    // Send the request and wait for the response
    var response = await request.send();
    var responseBody = await response.stream.bytesToString();

    if (response.statusCode == 200) {
      return jsonDecode(responseBody);
    } else {
      debugPrint("Upload failed with status: ${response.statusCode}");
      debugPrint("Response body: $responseBody");
    }
  }


}
