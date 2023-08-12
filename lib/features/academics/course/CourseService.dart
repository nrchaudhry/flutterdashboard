import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Course.dart';

class CourseService {
  static Future<List<Course>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'course', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Course>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'course/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Course> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'course/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Course> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'course', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Course> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'course/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Course>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'course', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Course> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'course/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Course> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'course/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Course>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'course/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Course>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'course/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Course>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'course/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Course>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'course/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Course>> callAll(String postData) async {
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
    return parsed.map<Course>((json) => Course.fromJson(json)).toList();
  }

  static Future<Course> call(String postData) async {
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

    return Course.fromJson(responseJson);
  }
}
