import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Personcontact.dart';

class PersoncontactService {
  static Future<List<Personcontact>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcontact', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Personcontact>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcontact/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Personcontact> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcontact/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcontact> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontact', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Personcontact> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcontact/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Personcontact>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcontact', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Personcontact> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'personcontact/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcontact> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcontact/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Personcontact>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontact/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcontact>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontact/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcontact>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontact/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcontact>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontact/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcontact>> callAll(String postData) async {
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
        .map<Personcontact>((json) => Personcontact.fromJson(json))
        .toList();
  }

  static Future<Personcontact> call(String postData) async {
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

    return Personcontact.fromJson(responseJson);
  }
}
