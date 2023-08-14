import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Shift.dart';

class ShiftService {
  static Future<List<Shift>> get() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'shift', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Shift>> getAll() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'shift/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Shift> getOne(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'shift/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Shift> add(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'shift', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Shift> update(data, id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'shift/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Shift>> updateAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'shift', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Shift> delete(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'DELETE', request_URI: 'shift/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Shift> remove(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'shift/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Shift>> search(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'shift/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Shift>> searchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'shift/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Shift>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'shift/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Shift>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'shift/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Shift>> callAll(String postData) async {
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
    return parsed.map<Shift>((json) => Shift.fromJson(json)).toList();
  }

  static Future<Shift> call(String postData) async {
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

    return Shift.fromJson(responseJson);
  }
}
