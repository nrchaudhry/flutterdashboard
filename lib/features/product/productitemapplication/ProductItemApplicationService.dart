import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'ProductItemApplication.dart';

//import 'Productitemapplication.dart';

class ProductitemapplicationService {
  static Future<List<Productitemapplication>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemapplication', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productitemapplication>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemapplication/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productitemapplication> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemapplication/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitemapplication> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemapplication', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productitemapplication> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitemapplication/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productitemapplication>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitemapplication', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productitemapplication> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'Productitemapplication/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitemapplication> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemapplication/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productitemapplication>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemapplication/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemapplication>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemapplication/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemapplication>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemapplication/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemapplication>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemapplication/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemapplication>> callAll(String postData) async {
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
        .map<Productitemapplication>(
            (json) => Productitemapplication.fromJson(json))
        .toList();
  }

  static Future<Productitemapplication> call(String postData) async {
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

    return Productitemapplication.fromJson(responseJson);
  }
}
