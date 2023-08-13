import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Locationleveltype.dart';

class LocationleveltypeService {
  static Future<List<Locationleveltype>> get() async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'GET', request_URI: 'locationleveltype', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Locationleveltype>> getAll() async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'GET', request_URI: 'locationleveltype/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Locationleveltype> getOne(id) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'GET', request_URI: 'locationleveltype/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Locationleveltype> add(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'locationleveltype', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Locationleveltype> update(data, id) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'PUT', request_URI: 'locationleveltype/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Locationleveltype>> updateAll(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'PUT', request_URI: 'locationleveltype', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Locationleveltype> delete(id) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'DELETE', request_URI: 'locationleveltype/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Locationleveltype> remove(id) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'GET', request_URI: 'locationleveltype/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Locationleveltype>> search(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'locationleveltype/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Locationleveltype>> searchAll(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'locationleveltype/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Locationleveltype>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'locationleveltype/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Locationleveltype>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $locationserviceNAME, request_TYPE: 'POST', request_URI: 'locationleveltype/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Locationleveltype>> callAll(String postData) async {
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
    return parsed.map<Locationleveltype>((json) => Locationleveltype.fromJson(json)).toList();
  }

  static Future<Locationleveltype> call(String postData) async {
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

    return Locationleveltype.fromJson(responseJson);
  }
}