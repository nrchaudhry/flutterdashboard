import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Semestertimeslot.dart';

class SemestertimeslotService {
  static Future<List<Semestertimeslot>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'semestertimeslot', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Semestertimeslot>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'semestertimeslot/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Semestertimeslot> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'semestertimeslot/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Semestertimeslot> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'semestertimeslot', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Semestertimeslot> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'semestertimeslot/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Semestertimeslot>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'semestertimeslot', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Semestertimeslot> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'semestertimeslot/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Semestertimeslot> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'semestertimeslot/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Semestertimeslot>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'semestertimeslot/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Semestertimeslot>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'semestertimeslot/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Semestertimeslot>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'semestertimeslot/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Semestertimeslot>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'semestertimeslot/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Semestertimeslot>> callAll(String postData) async {
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
    return parsed.map<Semestertimeslot>((json) => Semestertimeslot.fromJson(json)).toList();
  }

  static Future<Semestertimeslot> call(String postData) async {
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

    return Semestertimeslot.fromJson(responseJson);
  }
}
