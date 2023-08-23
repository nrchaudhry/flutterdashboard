import 'dart:io';

import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import '../../../config/setting.dart';
import 'mealplanproduct.dart';


class MealplanproductService {
  static Future<List<Mealplanproduct>> get() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'mealplanproduct', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Mealplanproduct>> getAll() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'mealplanproduct/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Mealplanproduct> getOne(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'mealplanproduct/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Mealplanproduct> add(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplanproduct', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Mealplanproduct> update(data, id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'mealplanproduct/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Mealplanproduct>> updateAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'mealplanproduct', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Mealplanproduct> delete(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'DELETE', request_URI: 'mealplanproduct/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Mealplanproduct> remove(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'mealplanproduct/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Mealplanproduct>> search(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplanproduct/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Mealplanproduct>> searchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplanproduct/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Mealplanproduct>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplanproduct/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Mealplanproduct>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'mealplanproduct/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Mealplanproduct>> callAll(String postData) async {
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
    return parsed.map<Mealplanproduct>((json) => Mealplanproduct.fromJson(json)).toList();
  }

  static Future<Mealplanproduct> call(String postData) async {
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

    return Mealplanproduct.fromJson(responseJson);
  }
}
