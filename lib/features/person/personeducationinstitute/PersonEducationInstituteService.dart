import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Personeducationinstitute.dart';

class PersoneducationinstituteService {
  static Future<List<Personeducationinstitute>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personeducationinstitute', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Personeducationinstitute>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personeducationinstitute/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Personeducationinstitute> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personeducationinstitute/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personeducationinstitute> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationinstitute', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Personeducationinstitute> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personeducationinstitute/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Personeducationinstitute>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personeducationinstitute', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Personeducationinstitute> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'personeducationinstitute/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personeducationinstitute> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personeducationinstitute/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Personeducationinstitute>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationinstitute/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personeducationinstitute>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationinstitute/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personeducationinstitute>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationinstitute/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personeducationinstitute>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personeducationinstitute/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personeducationinstitute>> callAll(String postData) async {
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
    return parsed.map<Personeducationinstitute>((json) => Personeducationinstitute.fromJson(json)).toList();
  }

  static Future<Personeducationinstitute> call(String postData) async {
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

    return Personeducationinstitute.fromJson(responseJson);
  }
}
