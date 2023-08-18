import 'dart:io';

import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import '../../../config/setting.dart';
import 'MealPlan.dart';


class MealplanService {
  static Future<List<Mealplan>> get() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'mealplan', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Mealplan>> getAll() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'mealplan/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Mealplan> getOne(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'mealplan/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Mealplan> add(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplan', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Mealplan> update(data, id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'mealplan/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Mealplan>> updateAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'mealplan', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Mealplan> delete(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'DELETE', request_URI: 'mealplan/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Mealplan> remove(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'mealplan/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Mealplan>> search(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplan/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Mealplan>> searchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplan/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Mealplan>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplan/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Mealplan>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplan/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Mealplan>> callAll(String postData) async {
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
    return parsed.map<Mealplan>((json) => Mealplan.fromJson(json)).toList();
  }

  static Future<Mealplan> call(String postData) async {
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

    return Mealplan.fromJson(responseJson);
  }
}
