import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Personcommunicationemail.dart';

class PersoncommunicationemailService {
  static Future<List<Personcommunicationemail>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationemail', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationemail>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationemail/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Personcommunicationemail> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationemail/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcommunicationemail> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationemail', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Personcommunicationemail> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcommunicationemail/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Personcommunicationemail>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcommunicationemail', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Personcommunicationemail> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'personcommunicationemail/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcommunicationemail> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationemail/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Personcommunicationemail>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationemail/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationemail>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationemail/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationemail>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationemail/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationemail>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationemail/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationemail>> callAll(String postData) async {
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
        .map<Personcommunicationemail>(
            (json) => Personcommunicationemail.fromJson(json))
        .toList();
  }

  static Future<Personcommunicationemail> call(String postData) async {
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

    return Personcommunicationemail.fromJson(responseJson);
  }
}
