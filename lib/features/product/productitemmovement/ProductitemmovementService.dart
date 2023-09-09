import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Productitemmovement.dart';

class ProductitemmovementService {
  static Future<List<Productitemmovement>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemmovement', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productitemmovement>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemmovement/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productitemmovement> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemmovement/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitemmovement> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemmovement', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productitemmovement> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitemmovement/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productitemmovement>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitemmovement', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productitemmovement> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'Productitemmovement/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitemmovement> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemmovement/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productitemmovement>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemmovement/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemmovement>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemmovement/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemmovement>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemmovement/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemmovement>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemmovement/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemmovement>> callAll(String postData) async {
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
    return parsed.map<Productitemmovement>((json) => Productitemmovement.fromJson(json)).toList();
  }

  static Future<Productitemmovement> call(String postData) async {
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

    return Productitemmovement.fromJson(responseJson);
  }
}
