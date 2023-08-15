import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Referenceperson.dart';

class ReferencepersonService {
  static Future<List<Referenceperson>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'referenceperson', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Referenceperson>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'referenceperson/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Referenceperson> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'referenceperson/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Referenceperson> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'referenceperson', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Referenceperson> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'referenceperson/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Referenceperson>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'referenceperson', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Referenceperson> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'referenceperson/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Referenceperson> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'referenceperson/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Referenceperson>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'referenceperson/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Referenceperson>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'referenceperson/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Referenceperson>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'referenceperson/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Referenceperson>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'referenceperson/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Referenceperson>> callAll(String postData) async {
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
    return parsed.map<Referenceperson>((json) => Referenceperson.fromJson(json)).toList();
  }

  static Future<Referenceperson> call(String postData) async {
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

    return Referenceperson.fromJson(responseJson);
  }
}
