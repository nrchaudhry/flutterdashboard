import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Productattribute.dart';

class ProductattributeService {
  static Future<List<Productattribute>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattribute', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productattribute>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattribute/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productattribute> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattribute/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productattribute> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattribute', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productattribute> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productattribute/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productattribute>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productattribute', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productattribute> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'productattribute/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productattribute> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattribute/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productattribute>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattribute/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattribute>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattribute/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattribute>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattribute/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattribute>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattribute/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattribute>> callAll(String postData) async {
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
        .map<Productattribute>((json) => Productattribute.fromJson(json))
        .toList();
  }

  static Future<Productattribute> call(String postData) async {
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

    return Productattribute.fromJson(responseJson);
  }
}
