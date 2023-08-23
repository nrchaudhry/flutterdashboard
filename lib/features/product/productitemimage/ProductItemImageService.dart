import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Productitemimage.dart';

class ProductitemimageService {
  static Future<List<Productitemimage>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemimage', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productitemimage>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemimage/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productitemimage> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemimage/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitemimage> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemimage', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productitemimage> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitemimage/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productitemimage>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitemimage', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productitemimage> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'Productitemimage/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitemimage> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitemimage/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productitemimage>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemimage/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemimage>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemimage/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemimage>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemimage/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemimage>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitemimage/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemimage>> callAll(String postData) async {
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
        .map<Productitemimage>((json) => Productitemimage.fromJson(json))
        .toList();
  }

  static Future<Productitemimage> call(String postData) async {
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

    return Productitemimage.fromJson(responseJson);
  }
}
