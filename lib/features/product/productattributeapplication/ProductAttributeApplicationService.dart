import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'ProductAttributeApplication.dart';

class ProductattributeapplicationService {
  static Future<List<Productattributeapplication>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattributeapplication', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productattributeapplication>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattributeapplication/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productattributeapplication> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattributeapplication/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productattributeapplication> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributeapplication', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productattributeapplication> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productattributeapplication/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productattributeapplication>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productattributeapplication', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productattributeapplication> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'productattributeapplication/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productattributeapplication> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattributeapplication/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productattributeapplication>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributeapplication/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattributeapplication>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributeapplication/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattributeapplication>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributeapplication/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattributeapplication>> advancedSearchAll(
      data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributeapplication/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattributeapplication>> callAll(
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
        .map<Productattributeapplication>(
            (json) => Productattributeapplication.fromJson(json))
        .toList();
  }

  static Future<Productattributeapplication> call(String postData) async {
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

    return Productattributeapplication.fromJson(responseJson);
  }
}
