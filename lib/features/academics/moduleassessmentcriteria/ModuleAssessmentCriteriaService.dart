import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Moduleassessmentcriteria.dart';

class ModuleassessmentcriteriaService {
  static Future<List<Moduleassessmentcriteria>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'moduleassessmentcriteria', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Moduleassessmentcriteria>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'moduleassessmentcriteria/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Moduleassessmentcriteria> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'moduleassessmentcriteria/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Moduleassessmentcriteria> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'moduleassessmentcriteria', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Moduleassessmentcriteria> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'moduleassessmentcriteria/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Moduleassessmentcriteria>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'moduleassessmentcriteria', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Moduleassessmentcriteria> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'moduleassessmentcriteria/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Moduleassessmentcriteria> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'moduleassessmentcriteria/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Moduleassessmentcriteria>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'moduleassessmentcriteria/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Moduleassessmentcriteria>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'moduleassessmentcriteria/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Moduleassessmentcriteria>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'moduleassessmentcriteria/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Moduleassessmentcriteria>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'moduleassessmentcriteria/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Moduleassessmentcriteria>> callAll(String postData) async {
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
    return parsed.map<Moduleassessmentcriteria>((json) => Moduleassessmentcriteria.fromJson(json)).toList();
  }

  static Future<Moduleassessmentcriteria> call(String postData) async {
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

    return Moduleassessmentcriteria.fromJson(responseJson);
  }
}
