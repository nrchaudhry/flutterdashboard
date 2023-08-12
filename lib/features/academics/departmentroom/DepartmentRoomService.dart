import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Departmentroom.dart';

class DepartmentroomService {
  static Future<List<Departmentroom>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'departmentroom', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Departmentroom>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'departmentroom/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Departmentroom> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'departmentroom/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Departmentroom> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'departmentroom', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Departmentroom> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'departmentroom/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Departmentroom>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'departmentroom', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Departmentroom> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'departmentroom/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Departmentroom> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'departmentroom/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Departmentroom>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'departmentroom/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Departmentroom>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'departmentroom/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Departmentroom>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'departmentroom/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Departmentroom>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'departmentroom/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Departmentroom>> callAll(String postData) async {
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
    return parsed.map<Departmentroom>((json) => Departmentroom.fromJson(json)).toList();
  }

  static Future<Departmentroom> call(String postData) async {
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

    return Departmentroom.fromJson(responseJson);
  }
}
