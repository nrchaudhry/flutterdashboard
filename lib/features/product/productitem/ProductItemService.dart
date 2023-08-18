import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'ProductItem.dart';

class ProductitemService {
  static Future<List<Productitem>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productitem', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productitem>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productitem/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productitem> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productitem/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitem> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productitem> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productitem/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productitem>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productitem', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productitem> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'productitem/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitem> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productitem/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productitem>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitem>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitem>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitem>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productitem/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitem>> callAll(String postData) async {
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
        .map<Productitem>((json) => Productitem.fromJson(json))
        .toList();
  }

  static Future<Productitem> call(String postData) async {
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

    return Productitem.fromJson(responseJson);
  }
}
