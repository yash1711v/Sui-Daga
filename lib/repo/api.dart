import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../cache/shared_preference.dart';
import '../flavors/config/flavor_config.dart';


class ApiCaller {
  final String _baseUrl = FlavorConfig().baseUrl ?? "";
  final _pref = Pref().pref;
  Dio dio = Dio();

  Future<dynamic> post(String url, dynamic data,
      {bool withToken = false, Map<String, String>? query}) async {
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
      {bool withToken = false, Map<String, String>? query, bool isMultipart = false}) async {
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

        // Add fields to FormData
        data.forEach((key, value) async {
          if (value is String) {
            formData.fields.add(MapEntry(key, value));
          } else if (value is File) {
            formData.files.add(
              MapEntry(
                  key,
                  await MultipartFile.fromFile(value.path, filename: value.path.split('/').last),
            ),
          );
        }
        });

        response = await dio.patch(
          Uri.parse('$_baseUrl$url').toString(),
          options: Options(headers: header),
          data: formData,
        );
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

}
