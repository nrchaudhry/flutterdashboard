import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Transportroutestaff.dart';

class TransportroutestaffService {
  static Future<List<Transportroutestaff>> get() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroutestaff', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Transportroutestaff>> getAll() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroutestaff/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Transportroutestaff> getOne(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroutestaff/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transportroutestaff> add(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutestaff', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Transportroutestaff> update(data, id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transportroutestaff/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Transportroutestaff>> updateAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transportroutestaff', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Transportroutestaff> delete(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'DELETE', request_URI: 'Transportroutestaff/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transportroutestaff> remove(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportroutestaff/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Transportroutestaff>> search(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutestaff/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroutestaff>> searchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutestaff/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroutestaff>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutestaff/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroutestaff>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportroutestaff/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportroutestaff>> callAll(String postData) async {
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
        .map<Transportroutestaff>((json) => Transportroutestaff.fromJson(json))
        .toList();
  }

  static Future<Transportroutestaff> call(String postData) async {
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

    return Transportroutestaff.fromJson(responseJson);
  }
}
