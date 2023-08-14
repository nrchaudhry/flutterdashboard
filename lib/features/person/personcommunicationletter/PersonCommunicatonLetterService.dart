import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Personcommunicationletter.dart';

class PersoncommunicationletterService {
  static Future<List<Personcommunicationletter>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationletter', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationletter>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationletter/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Personcommunicationletter> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationletter/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcommunicationletter> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationletter', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Personcommunicationletter> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcommunicationletter/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Personcommunicationletter>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcommunicationletter', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Personcommunicationletter> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'personcommunicationletter/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcommunicationletter> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationletter/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Personcommunicationletter>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationletter/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationletter>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationletter/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationletter>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationletter/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationletter>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationletter/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationletter>> callAll(
      String postData) async {
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
        .map<Personcommunicationletter>(
            (json) => Personcommunicationletter.fromJson(json))
        .toList();
  }

  static Future<Personcommunicationletter> call(String postData) async {
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

    return Personcommunicationletter.fromJson(responseJson);
  }
}
