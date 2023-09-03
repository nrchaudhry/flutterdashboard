import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'ProductItem.dart';

class ProductitemService {
  static Future<List<ProductItem>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productitem', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<ProductItem>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productitem/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<ProductItem> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productitem/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<ProductItem> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem', request_BODY: $data}";
    return await call(postData);
  }

  static Future<ProductItem> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productitem/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<ProductItem>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productitem', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<ProductItem> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'productitem/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<ProductItem> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productitem/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<ProductItem>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<ProductItem>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<ProductItem>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<ProductItem>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<ProductItem>> callAll(String postData) async {
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
        .map<ProductItem>((json) => ProductItem.fromJson(json))
        .toList();
  }

  static Future<ProductItem> call(String postData) async {
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

    return ProductItem.fromJson(responseJson);
  }
}
