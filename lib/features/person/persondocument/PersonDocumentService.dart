import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'PersonDocument.dart';

class PersondocumentService {
  static Future<List<Persondocument>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'persondocument', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Persondocument>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'persondocument/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Persondocument> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'persondocument/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Persondocument> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'persondocument', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Persondocument> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'persondocument/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Persondocument>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'persondocument', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Persondocument> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'persondocument/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Persondocument> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'persondocument/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Persondocument>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'persondocument/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Persondocument>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'persondocument/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Persondocument>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'persondocument/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Persondocument>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'persondocument/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Persondocument>> callAll(String postData) async {
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
    return parsed.map<Persondocument>((json) => Persondocument.fromJson(json)).toList();
  }

  static Future<Persondocument> call(String postData) async {
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

    return Persondocument.fromJson(responseJson);
  }
}
