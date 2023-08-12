import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Intakecourse.dart';

class IntakecourseService {
  static Future<List<Intakecourse>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'intakecourse', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Intakecourse>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'intakecourse/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Intakecourse> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'intakecourse/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Intakecourse> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'intakecourse', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Intakecourse> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'intakecourse/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Intakecourse>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'intakecourse', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Intakecourse> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'intakecourse/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Intakecourse> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'intakecourse/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Intakecourse>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'intakecourse/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Intakecourse>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'intakecourse/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Intakecourse>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'intakecourse/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Intakecourse>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'intakecourse/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Intakecourse>> callAll(String postData) async {
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
    return parsed.map<Intakecourse>((json) => Intakecourse.fromJson(json)).toList();
  }

  static Future<Intakecourse> call(String postData) async {
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

    return Intakecourse.fromJson(responseJson);
  }
}
