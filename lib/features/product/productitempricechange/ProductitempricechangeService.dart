import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Productitempricechange.dart';

class ProductitempricechangeService {
  static Future<List<Productitempricechange>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitempricechange', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productitempricechange>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitempricechange/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productitempricechange> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitempricechange/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitempricechange> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricechange', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productitempricechange> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitempricechange/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productitempricechange>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productitempricechange', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productitempricechange> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'Productitempricechange/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productitempricechange> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productitempricechange/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productitempricechange>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricechange/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitempricechange>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricechange/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitempricechange>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricechange/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitempricechange>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productitempricechange/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productitempricechange>> callAll(String postData) async {
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
    return parsed.map<Productitempricechange>((json) => Productitempricechange.fromJson(json)).toList();
  }

  static Future<Productitempricechange> call(String postData) async {
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

    return Productitempricechange.fromJson(responseJson);
  }
}
