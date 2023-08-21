import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Transportstaff.dart';

class TransportstaffService {
  static Future<List<Transportstaff>> get() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportstaff', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Transportstaff>> getAll() async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportstaff/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Transportstaff> getOne(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportstaff/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transportstaff> add(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportstaff', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Transportstaff> update(data, id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transportstaff/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Transportstaff>> updateAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'PUT', request_URI: 'Transportstaff', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Transportstaff> delete(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'DELETE', request_URI: 'Transportstaff/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Transportstaff> remove(id) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'GET', request_URI: 'Transportstaff/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Transportstaff>> search(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportstaff/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportstaff>> searchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportstaff/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportstaff>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportstaff/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportstaff>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $transportserviceNAME, request_TYPE: 'POST', request_URI: 'Transportstaff/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Transportstaff>> callAll(String postData) async {
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
        .map<Transportstaff>((json) => Transportstaff.fromJson(json))
        .toList();
  }

  static Future<Transportstaff> call(String postData) async {
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

    return Transportstaff.fromJson(responseJson);
  }
}
