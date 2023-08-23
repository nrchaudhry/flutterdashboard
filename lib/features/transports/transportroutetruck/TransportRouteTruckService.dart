import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Transportroutetruck.dart';

class TransportroutetruckService {
  static Future<List<Transportroutetruck>> get() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroutetruck', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Transportroutetruck>> getAll() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroutetruck/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Transportroutetruck> getOne(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroutetruck/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transportroutetruck> add(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutetruck', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Transportroutetruck> update(data, id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transportroutetruck/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Transportroutetruck>> updateAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transportroutetruck', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Transportroutetruck> delete(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'DELETE', request_URI: 'Transportroutetruck/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transportroutetruck> remove(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroutetruck/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Transportroutetruck>> search(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutetruck/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroutetruck>> searchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutetruck/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroutetruck>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutetruck/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroutetruck>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutetruck/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroutetruck>> callAll(String postData) async {
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
        .map<Transportroutetruck>((json) => Transportroutetruck.fromJson(json))
        .toList();
  }

  static Future<Transportroutetruck> call(String postData) async {
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

    return Transportroutetruck.fromJson(responseJson);
  }
}
