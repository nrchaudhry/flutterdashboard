import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'AcademicsYear.dart';

class AcademicsyearService {
  static Future<List<Academicsyear>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'academicsyear', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Academicsyear>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'academicsyear/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Academicsyear> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'academicsyear/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Academicsyear> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicsyear', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Academicsyear> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'academicsyear/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Academicsyear>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'academicsyear', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Academicsyear> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'academicsyear/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Academicsyear> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'academicsyear/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Academicsyear>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicsyear/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Academicsyear>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicsyear/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Academicsyear>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicsyear/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Academicsyear>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicsyear/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Academicsyear>> callAll(String postData) async {
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
    return parsed.map<Academicsyear>((json) => Academicsyear.fromJson(json)).toList();
  }

  static Future<Academicsyear> call(String postData) async {
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

    return Academicsyear.fromJson(responseJson);
  }
}
