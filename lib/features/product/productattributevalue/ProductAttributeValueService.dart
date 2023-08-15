import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'ProductAttributeValue.dart';

class ProductattributevalueService {
  static Future<List<Productattributevalue>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattributevalue', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productattributevalue>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattributevalue/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productattributevalue> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattributevalue/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productattributevalue> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributevalue', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productattributevalue> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productattributevalue/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productattributevalue>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productattributevalue', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productattributevalue> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'productattributevalue/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productattributevalue> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productattributevalue/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productattributevalue>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributevalue/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattributevalue>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributevalue/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattributevalue>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributevalue/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattributevalue>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productattributevalue/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productattributevalue>> callAll(String postData) async {
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
        .map<Productattributevalue>(
            (json) => Productattributevalue.fromJson(json))
        .toList();
  }

  static Future<Productattributevalue> call(String postData) async {
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

    return Productattributevalue.fromJson(responseJson);
  }
}
