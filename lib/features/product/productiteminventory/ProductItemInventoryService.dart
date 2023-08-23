import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Productiteminventory.dart';

class ProductiteminventoryService {
  static Future<List<Productiteminventory>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productiteminventory', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productiteminventory>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productiteminventory/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productiteminventory> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productiteminventory/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productiteminventory> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productiteminventory', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productiteminventory> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productiteminventory/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productiteminventory>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'Productiteminventory', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productiteminventory> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'Productiteminventory/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productiteminventory> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'Productiteminventory/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productiteminventory>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productiteminventory/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productiteminventory>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productiteminventory/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productiteminventory>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productiteminventory/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productiteminventory>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'Productiteminventory/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productiteminventory>> callAll(String postData) async {
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
        .map<Productiteminventory>(
            (json) => Productiteminventory.fromJson(json))
        .toList();
  }

  static Future<Productiteminventory> call(String postData) async {
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

    return Productiteminventory.fromJson(responseJson);
  }
}
