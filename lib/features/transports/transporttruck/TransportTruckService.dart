import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Transporttruck.dart';

class TransporttruckService {
  static Future<List<Transporttruck>> get() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transporttruck', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Transporttruck>> getAll() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transporttruck/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Transporttruck> getOne(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transporttruck/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transporttruck> add(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transporttruck', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Transporttruck> update(data, id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transporttruck/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Transporttruck>> updateAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transporttruck', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Transporttruck> delete(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'DELETE', request_URI: 'Transporttruck/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transporttruck> remove(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transporttruck/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Transporttruck>> search(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transporttruck/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transporttruck>> searchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transporttruck/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transporttruck>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transporttruck/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transporttruck>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transporttruck/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transporttruck>> callAll(String postData) async {
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
        .map<Transporttruck>((json) => Transporttruck.fromJson(json))
        .toList();
  }

  static Future<Transporttruck> call(String postData) async {
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

    return Transporttruck.fromJson(responseJson);
  }
}
