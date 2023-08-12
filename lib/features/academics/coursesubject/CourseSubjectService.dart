import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Coursesubject.dart';

class CoursesubjectService {
  static Future<List<Coursesubject>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'coursesubject', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Coursesubject>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'coursesubject/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Coursesubject> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'coursesubject/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Coursesubject> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'coursesubject', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Coursesubject> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'coursesubject/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Coursesubject>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'coursesubject', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Coursesubject> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'coursesubject/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Coursesubject> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'coursesubject/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Coursesubject>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'coursesubject/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Coursesubject>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'coursesubject/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Coursesubject>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'coursesubject/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Coursesubject>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'coursesubject/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Coursesubject>> callAll(String postData) async {
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
    return parsed.map<Coursesubject>((json) => Coursesubject.fromJson(json)).toList();
  }

  static Future<Coursesubject> call(String postData) async {
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

    return Coursesubject.fromJson(responseJson);
  }
}
