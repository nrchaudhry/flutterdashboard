import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Routelocation.dart';

class RoutelocationService {
  static Future<List<Routelocation>> get() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Routelocation', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Routelocation>> getAll() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Routelocation/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Routelocation> getOne(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Routelocation/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Routelocation> add(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Routelocation', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Routelocation> update(data, id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Routelocation/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Routelocation>> updateAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Routelocation', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Routelocation> delete(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'DELETE', request_URI: 'Routelocation/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Routelocation> remove(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Routelocation/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Routelocation>> search(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Routelocation/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Routelocation>> searchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Routelocation/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Routelocation>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Routelocation/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Routelocation>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Routelocation/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Routelocation>> callAll(String postData) async {
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
    return parsed
        .map<Routelocation>((json) => Routelocation.fromJson(json))
        .toList();
  }

  static Future<Routelocation> call(String postData) async {
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

    return Routelocation.fromJson(responseJson);
  }
}
