import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Personcommunicationsms.dart';

class PersoncommunicationsmsService {
  static Future<List<Personcommunicationsms>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationsms', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationsms>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationsms/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Personcommunicationsms> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationsms/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcommunicationsms> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationsms', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Personcommunicationsms> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcommunicationsms/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Personcommunicationsms>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcommunicationsms', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Personcommunicationsms> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'personcommunicationsms/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcommunicationsms> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcommunicationsms/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Personcommunicationsms>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationsms/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationsms>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationsms/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationsms>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationsms/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationsms>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcommunicationsms/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcommunicationsms>> callAll(String postData) async {
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
        .map<Personcommunicationsms>(
            (json) => Personcommunicationsms.fromJson(json))
        .toList();
  }

  static Future<Personcommunicationsms> call(String postData) async {
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

    return Personcommunicationsms.fromJson(responseJson);
  }
}
