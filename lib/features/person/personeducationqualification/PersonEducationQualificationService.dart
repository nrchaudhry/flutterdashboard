import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Personeducationqualification.dart';

class PersoneducationqualificationService {
  static Future<List<Personeducationqualification>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personeducationqualification', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Personeducationqualification>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personeducationqualification/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Personeducationqualification> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personeducationqualification/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personeducationqualification> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationqualification', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Personeducationqualification> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personeducationqualification/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Personeducationqualification>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personeducationqualification', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Personeducationqualification> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'personeducationqualification/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personeducationqualification> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personeducationqualification/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Personeducationqualification>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationqualification/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personeducationqualification>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationqualification/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personeducationqualification>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationqualification/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personeducationqualification>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationqualification/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personeducationqualification>> callAll(String postData) async {
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
    return parsed.map<Personeducationqualification>((json) => Personeducationqualification.fromJson(json)).toList();
  }

  static Future<Personeducationqualification> call(String postData) async {
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

    return Personeducationqualification.fromJson(responseJson);
  }
}
