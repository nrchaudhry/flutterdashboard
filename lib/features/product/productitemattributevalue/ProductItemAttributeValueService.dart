import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'ProductItemAttributeValue.dart';

class ProductitemattributevalueService {
  static Future<List<Productitemattributevalue>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: ' Productitemattributevalue', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productitemattributevalue>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: ' Productitemattributevalue/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productitemattributevalue> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: ' Productitemattributevalue/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitemattributevalue> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: ' Productitemattributevalue', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productitemattributevalue> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: ' Productitemattributevalue/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productitemattributevalue>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: ' Productitemattributevalue', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productitemattributevalue> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: ' Productitemattributevalue/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitemattributevalue> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: ' Productitemattributevalue/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productitemattributevalue>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: ' Productitemattributevalue/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemattributevalue>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: ' Productitemattributevalue/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemattributevalue>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: ' Productitemattributevalue/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemattributevalue>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: ' Productitemattributevalue/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitemattributevalue>> callAll(
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
        .map<Productitemattributevalue>(
            (json) => Productitemattributevalue.fromJson(json))
        .toList();
  }

  static Future<Productitemattributevalue> call(String postData) async {
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

    return Productitemattributevalue.fromJson(responseJson);
  }
}
