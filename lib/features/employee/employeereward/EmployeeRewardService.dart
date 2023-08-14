import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Employeereward.dart';

class EmployeerewardService {
  static Future<List<Employeereward>> get() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeereward', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Employeereward>> getAll() async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeereward/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Employeereward> getOne(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeereward/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeereward> add(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeereward', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Employeereward> update(data, id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeereward/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Employeereward>> updateAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'PUT', request_URI: 'employeereward', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Employeereward> delete(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'DELETE', request_URI: 'employeereward/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Employeereward> remove(id) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'GET', request_URI: 'employeereward/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Employeereward>> search(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeereward/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeereward>> searchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeereward/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeereward>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeereward/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeereward>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $employeeserviceNAME, request_TYPE: 'POST', request_URI: 'employeereward/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Employeereward>> callAll(String postData) async {
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
    return parsed.map<Employeereward>((json) => Employeereward.fromJson(json)).toList();
  }

  static Future<Employeereward> call(String postData) async {
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

    return Employeereward.fromJson(responseJson);
  }
}
