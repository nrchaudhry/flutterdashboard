import 'dart:io';

import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import '../../../config/setting.dart';
import 'Fitnesscourse.dart';


class FitnesscourseService {
  static Future<List<Fitnesscourse>> get() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'fitnesscourse', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourse>> getAll() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'fitnesscourse/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Fitnesscourse> getOne(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'fitnesscourse/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Fitnesscourse> add(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnesscourse', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Fitnesscourse> update(data, id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'fitnesscourse/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Fitnesscourse>> updateAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'fitnesscourse', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Fitnesscourse> delete(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'DELETE', request_URI: 'fitnesscourse/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Fitnesscourse> remove(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'fitnesscourse/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Fitnesscourse>> search(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnesscourse/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourse>> searchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnesscourse/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourse>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnesscourse/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourse>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'fitnesscourse/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Fitnesscourse>> callAll(String postData) async {
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
    return parsed.map<Fitnesscourse>((json) => Fitnesscourse.fromJson(json)).toList();
  }

  static Future<Fitnesscourse> call(String postData) async {
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

    return Fitnesscourse.fromJson(responseJson);
  }
}
