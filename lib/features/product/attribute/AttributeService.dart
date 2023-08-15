import 'dart:io';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;
import '../../product/attribute/Attribute.dart';

class AttributeService {
  static Future<List<Attribute>> get() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'attribute', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Attribute>> getAll() async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'attribute/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Attribute> getOne(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'attribute/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Attribute> add(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attribute', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Attribute> update(data, id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'attribute/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Attribute>> updateAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'PUT', request_URI: 'attribute', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Attribute> delete(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'DELETE', request_URI: 'attribute/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Attribute> remove(id) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'GET', request_URI: 'attribute/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Attribute>> search(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attribute/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Attribute>> searchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attribute/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Attribute>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attribute/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Attribute>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $productserviceNAME, request_TYPE: 'POST', request_URI: 'attribute/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Attribute>> callAll(String postData) async {
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
    return parsed.map<Attribute>((json) => Attribute.fromJson(json)).toList();
  }

  static Future<Attribute> call(String postData) async {
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

    return Attribute.fromJson(responseJson);
  }
}
