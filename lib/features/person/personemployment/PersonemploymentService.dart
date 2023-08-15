import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Personemployment.dart';

class PersonemploymentService {
  static Future<List<Personemployment>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personemployment', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Personemployment>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personemployment/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Personemployment> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personemployment/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personemployment> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personemployment', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Personemployment> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personemployment/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Personemployment>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personemployment', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Personemployment> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'personemployment/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personemployment> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personemployment/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Personemployment>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personemployment/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personemployment>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personemployment/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personemployment>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personemployment/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personemployment>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personemployment/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personemployment>> callAll(String postData) async {
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
    return parsed.map<Personemployment>((json) => Personemployment.fromJson(json)).toList();
  }

  static Future<Personemployment> call(String postData) async {
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

    return Personemployment.fromJson(responseJson);
  }
}
