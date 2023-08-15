import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;
import 'ProductApplication.dart';

class ProductapplicationService {
  static Future<List<Productapplication>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productapplication', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Productapplication>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productapplication/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Productapplication> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productapplication/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productapplication> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productapplication', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Productapplication> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productapplication/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Productapplication>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'productapplication', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Productapplication> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'productapplication/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Productapplication> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'productapplication/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Productapplication>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productapplication/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productapplication>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productapplication/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productapplication>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productapplication/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productapplication>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'productapplication/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Productapplication>> callAll(String postData) async {
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
        .map<Productapplication>((json) => Productapplication.fromJson(json))
        .toList();
  }

  static Future<Productapplication> call(String postData) async {
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

    return Productapplication.fromJson(responseJson);
  }
}
