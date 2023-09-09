import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Productitempricelevel.dart';

class ProductitempricelevelService {
  static Future<List<Productitempricelevel>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitempricelevel', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productitempricelevel>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitempricelevel/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productitempricelevel> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitempricelevel/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitempricelevel> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricelevel', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productitempricelevel> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitempricelevel/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productitempricelevel>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitempricelevel', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productitempricelevel> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'Productitempricelevel/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitempricelevel> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitempricelevel/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productitempricelevel>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricelevel/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitempricelevel>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricelevel/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitempricelevel>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricelevel/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitempricelevel>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricelevel/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitempricelevel>> callAll(String postData) async {
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
    return parsed.map<Productitempricelevel>((json) => Productitempricelevel.fromJson(json)).toList();
  }

  static Future<Productitempricelevel> call(String postData) async {
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

    return Productitempricelevel.fromJson(responseJson);
  }
}
