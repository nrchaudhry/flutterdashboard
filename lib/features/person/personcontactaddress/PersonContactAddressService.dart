import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Personcontactaddress.dart';

class PersoncontactaddressService {
  static Future<List<Personcontactaddress>> get() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcontactaddress', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Personcontactaddress>> getAll() async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcontactaddress/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Personcontactaddress> getOne(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcontactaddress/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcontactaddress> add(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontactaddress', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Personcontactaddress> update(data, id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcontactaddress/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Personcontactaddress>> updateAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'PUT', request_URI: 'personcontactaddress', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Personcontactaddress> delete(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'DELETE', request_URI: 'personcontactaddress/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Personcontactaddress> remove(id) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'GET', request_URI: 'personcontactaddress/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Personcontactaddress>> search(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontactaddress/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcontactaddress>> searchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontactaddress/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcontactaddress>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontactaddress/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcontactaddress>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $personserviceNAME, request_TYPE: 'POST', request_URI: 'personcontactaddress/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Personcontactaddress>> callAll(String postData) async {
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
    return parsed.map<Personcontactaddress>((json) => Personcontactaddress.fromJson(json)).toList();
  }

  static Future<Personcontactaddress> call(String postData) async {
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

    return Personcontactaddress.fromJson(responseJson);
  }
}
