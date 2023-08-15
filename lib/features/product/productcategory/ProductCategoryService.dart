import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'ProductCategory.dart';

class ProductcategoryService {
  static Future<List<Productcategory>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productcategory', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productcategory>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productcategory/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productcategory> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productcategory/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productcategory> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productcategory', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productcategory> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productcategory/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productcategory>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productcategory', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productcategory> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'productcategory/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productcategory> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productcategory/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productcategory>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productcategory/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productcategory>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productcategory/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productcategory>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productcategory/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productcategory>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productcategory/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productcategory>> callAll(String postData) async {
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
        .map<Productcategory>((json) => Productcategory.fromJson(json))
        .toList();
  }

  static Future<Productcategory> call(String postData) async {
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

    return Productcategory.fromJson(responseJson);
  }
}
