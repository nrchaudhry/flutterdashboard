import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'TransportRoute.dart';

class TransportrouteService {
  static Future<List<Transportroute>> get() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroute', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Transportroute>> getAll() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroute/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Transportroute> getOne(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroute/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transportroute> add(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroute', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Transportroute> update(data, id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transportroute/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Transportroute>> updateAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transportroute', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Transportroute> delete(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'DELETE', request_URI: 'Transportroute/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transportroute> remove(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroute/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Transportroute>> search(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroute/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroute>> searchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroute/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroute>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroute/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroute>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroute/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroute>> callAll(String postData) async {
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
        .map<Transportroute>((json) => Transportroute.fromJson(json))
        .toList();
  }

  static Future<Transportroute> call(String postData) async {
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

    return Transportroute.fromJson(responseJson);
  }
}
