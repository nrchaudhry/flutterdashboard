import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Employeeshift.dart';

class EmployeeshiftService {
  static Future<List<Employeeshift>> get() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeshift', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Employeeshift>> getAll() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeshift/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Employeeshift> getOne(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeshift/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeeshift> add(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeshift', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Employeeshift> update(data, id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeeshift/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Employeeshift>> updateAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeeshift', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Employeeshift> delete(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'DELETE', request_URI: 'employeeshift/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeeshift> remove(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeshift/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Employeeshift>> search(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeshift/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeshift>> searchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeshift/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeshift>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeshift/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeshift>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeshift/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeshift>> callAll(String postData) async {
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
    return parsed.map<Employeeshift>((json) => Employeeshift.fromJson(json)).toList();
  }

  static Future<Employeeshift> call(String postData) async {
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

    return Employeeshift.fromJson(responseJson);
  }
}
