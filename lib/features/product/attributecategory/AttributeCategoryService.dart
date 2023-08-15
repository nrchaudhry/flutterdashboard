import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'AttributeCategory.dart';

class AttributecategoryService {
  static Future<List<Attributecategory>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'attributecategory', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Attributecategory>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'attributecategory/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Attributecategory> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'attributecategory/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Attributecategory> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attributecategory', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Attributecategory> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'attributecategory/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Attributecategory>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'attributecategory', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Attributecategory> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'attributecategory/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Attributecategory> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'attributecategory/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Attributecategory>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attributecategory/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Attributecategory>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attributecategory/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Attributecategory>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attributecategory/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Attributecategory>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attributecategory/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Attributecategory>> callAll(String postData) async {
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
        .map<Attributecategory>((json) => Attributecategory.fromJson(json))
        .toList();
  }

  static Future<Attributecategory> call(String postData) async {
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

    return Attributecategory.fromJson(responseJson);
  }
}
