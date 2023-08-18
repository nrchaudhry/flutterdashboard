import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Productimage.dart';

class ProductimageService {
  static Future<List<Productimage>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productimage', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productimage>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productimage/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productimage> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productimage/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productimage> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productimage', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productimage> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productimage/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productimage>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productimage', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productimage> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'productimage/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productimage> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productimage/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productimage>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productimage/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productimage>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productimage/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productimage>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productimage/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productimage>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productimage/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productimage>> callAll(String postData) async {
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
        .map<Productimage>((json) => Productimage.fromJson(json))
        .toList();
  }

  static Future<Productimage> call(String postData) async {
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

    return Productimage.fromJson(responseJson);
  }
}
