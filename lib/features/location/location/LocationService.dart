import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Location.dart';

class LocationService {
  static Future<List<Location>> get() async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'GET', request_URI: 'location', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Location>> getAll() async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'GET', request_URI: 'location/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Location> getOne(id) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'GET', request_URI: 'location/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Location> add(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'location', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Location> update(data, id) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'PUT', request_URI: 'location/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Location>> updateAll(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'PUT', request_URI: 'location', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Location> delete(id) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'DELETE', request_URI: 'location/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Location> remove(id) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'GET', request_URI: 'location/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Location>> search(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'location/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Location>> searchAll(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'location/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Location>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'location/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Location>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'location/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Location>> callAll(String postData) async {
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
    return parsed.map<Location>((json) => Location.fromJson(json)).toList();
  }

  static Future<Location> call(String postData) async {
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

    return Location.fromJson(responseJson);
  }
}