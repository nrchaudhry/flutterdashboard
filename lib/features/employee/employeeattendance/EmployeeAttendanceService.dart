import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Employeeattendance.dart';

class EmployeeattendanceService {
  static Future<List<Employeeattendance>> get() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeattendance', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Employeeattendance>> getAll() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeattendance/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Employeeattendance> getOne(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeattendance/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeeattendance> add(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeattendance', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Employeeattendance> update(data, id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeeattendance/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Employeeattendance>> updateAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeeattendance', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Employeeattendance> delete(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'DELETE', request_URI: 'employeeattendance/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeeattendance> remove(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeattendance/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Employeeattendance>> search(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeattendance/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeattendance>> searchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeattendance/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeattendance>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeattendance/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeattendance>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeattendance/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeattendance>> callAll(String postData) async {
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
    return parsed.map<Employeeattendance>((json) => Employeeattendance.fromJson(json)).toList();
  }

  static Future<Employeeattendance> call(String postData) async {
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

    return Employeeattendance.fromJson(responseJson);
  }
}
