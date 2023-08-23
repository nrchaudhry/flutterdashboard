import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Fitnesscourseworkout.dart';

class FitnesscourseworkoutService {
  static Future<List<Fitnesscourseworkout>> get() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'room', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourseworkout>> getAll() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'room/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Fitnesscourseworkout> getOne(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'room/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Fitnesscourseworkout> add(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'room', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Fitnesscourseworkout> update(data, id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'room/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Fitnesscourseworkout>> updateAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'room', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Fitnesscourseworkout> delete(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'DELETE', request_URI: 'room/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Fitnesscourseworkout> remove(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'room/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Fitnesscourseworkout>> search(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'room/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourseworkout>> searchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'room/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourseworkout>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'room/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourseworkout>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'room/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourseworkout>> callAll(String postData) async {
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
    return parsed.map<Fitnesscourseworkout>((json) => Fitnesscourseworkout.fromJson(json)).toList();
  }

  static Future<Fitnesscourseworkout> call(String postData) async {
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

    return Fitnesscourseworkout.fromJson(responseJson);
  }
}
