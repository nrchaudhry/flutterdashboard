import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Employeedepartment.dart';

class EmployeedepartmentService {
  static Future<List<Employeedepartment>> get() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeedepartment', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Employeedepartment>> getAll() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeedepartment/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Employeedepartment> getOne(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeedepartment/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeedepartment> add(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeedepartment', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Employeedepartment> update(data, id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeedepartment/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Employeedepartment>> updateAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeedepartment', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Employeedepartment> delete(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'DELETE', request_URI: 'employeedepartment/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeedepartment> remove(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeedepartment/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Employeedepartment>> search(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeedepartment/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeedepartment>> searchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeedepartment/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeedepartment>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeedepartment/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeedepartment>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeedepartment/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeedepartment>> callAll(String postData) async {
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
    return parsed.map<Employeedepartment>((json) => Employeedepartment.fromJson(json)).toList();
  }

  static Future<Employeedepartment> call(String postData) async {
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

    return Employeedepartment.fromJson(responseJson);
  }
}
