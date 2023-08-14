import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Employeeperformance.dart';

class EmployeeperformanceService {
  static Future<List<Employeeperformance>> get() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeperformance', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Employeeperformance>> getAll() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeperformance/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Employeeperformance> getOne(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeperformance/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeeperformance> add(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeperformance', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Employeeperformance> update(data, id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeeperformance/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Employeeperformance>> updateAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeeperformance', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Employeeperformance> delete(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'DELETE', request_URI: 'employeeperformance/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeeperformance> remove(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeeperformance/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Employeeperformance>> search(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeperformance/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeperformance>> searchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeperformance/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeperformance>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeperformance/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeperformance>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeeperformance/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeeperformance>> callAll(String postData) async {
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
    return parsed.map<Employeeperformance>((json) => Employeeperformance.fromJson(json)).toList();
  }

  static Future<Employeeperformance> call(String postData) async {
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

    return Employeeperformance.fromJson(responseJson);
  }
}
