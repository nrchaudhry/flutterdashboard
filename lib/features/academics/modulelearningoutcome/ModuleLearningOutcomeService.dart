import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Modulelearningoutcome.dart';

class ModulelearningoutcomeService {
  static Future<List<Modulelearningoutcome>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'modulelearningoutcome', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Modulelearningoutcome>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'modulelearningoutcome/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Modulelearningoutcome> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'modulelearningoutcome/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Modulelearningoutcome> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'modulelearningoutcome', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Modulelearningoutcome> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'modulelearningoutcome/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Modulelearningoutcome>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'modulelearningoutcome', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Modulelearningoutcome> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'modulelearningoutcome/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Modulelearningoutcome> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'modulelearningoutcome/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Modulelearningoutcome>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'modulelearningoutcome/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Modulelearningoutcome>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'modulelearningoutcome/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Modulelearningoutcome>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'modulelearningoutcome/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Modulelearningoutcome>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'modulelearningoutcome/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Modulelearningoutcome>> callAll(String postData) async {
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
    return parsed.map<Modulelearningoutcome>((json) => Modulelearningoutcome.fromJson(json)).toList();
  }

  static Future<Modulelearningoutcome> call(String postData) async {
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

    return Modulelearningoutcome.fromJson(responseJson);
  }
}
