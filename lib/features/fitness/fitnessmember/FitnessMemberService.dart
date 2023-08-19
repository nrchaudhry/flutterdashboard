import 'dart:io';

import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import '../../../config/setting.dart';
import 'FitnessMember.dart';


class FitnessmemberService {
  static Future<List<Fitnessmember>> get() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'fitnessmember', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Fitnessmember>> getAll() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'fitnessmember/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Fitnessmember> getOne(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'fitnessmember/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Fitnessmember> add(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnessmember', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Fitnessmember> update(data, id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'fitnessmember/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Fitnessmember>> updateAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'fitnessmember', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Fitnessmember> delete(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'DELETE', request_URI: 'fitnessmember/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Fitnessmember> remove(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'fitnessmember/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Fitnessmember>> search(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnessmember/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnessmember>> searchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnessmember/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnessmember>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnessmember/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnessmember>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnessmember/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnessmember>> callAll(String postData) async {
    dynamic responseJson;
    try {
      final response = await http.post(
        Uri.parse("${Login.applicationservicePATH}apigateway"),
        headers: {
          HttpHeaders.authorizationHeader: 'bearer ${Login.accessToken}',
        },
        body: postData,
      );

      // final response = await http.post(
      //   Uri.parse("http://api.cwiztech.com:8079/v1/apigateway"),
      //   headers: {
      //     HttpHeaders.authorizationHeader:
      //         'bearer 74418764-1024-4666-afc9-db751a814768',
      //   },
      //   body: postData,
      // );
      responseJson = HTTPService.returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    final parsed = responseJson.cast<Map<String, dynamic>>();
    return parsed.map<Fitnessmember>((json) => Fitnessmember.fromJson(json)).toList();
  }

  static Future<Fitnessmember> call(String postData) async {
    dynamic responseJson;
    try {
      final response = await http.post(
        Uri.parse("${Login.applicationservicePATH}apigateway"),
        headers: {
          HttpHeaders.authorizationHeader: 'bearer ${Login.accessToken}',
        },
        body: postData,
      );

      // final response = await http.post(
      //   Uri.parse("http://api.cwiztech.com:8079/v1/apigateway"),
      //   headers: {
      //     HttpHeaders.authorizationHeader:
      //         'bearer 74418764-1024-4666-afc9-db751a814768',
      //   },
      //   body: postData,
      // );
      responseJson = HTTPService.returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return Fitnessmember.fromJson(responseJson);
  }
}
