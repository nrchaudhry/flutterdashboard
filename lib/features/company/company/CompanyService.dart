import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Company.dart';

class CompanyService {
  static Future<List<Company>> get() async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'GET', request_URI: 'company', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Company>> getAll() async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'GET', request_URI: 'company/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Company> getOne(id) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'GET', request_URI: 'company/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Company> add(data) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'POST', request_URI: 'company', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Company> update(data, id) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'PUT', request_URI: 'company/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Company>> updateAll(data) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'PUT', request_URI: 'company', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Company> delete(id) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'DELETE', request_URI: 'company/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Company> remove(id) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'GET', request_URI: 'company/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Company>> search(data) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'POST', request_URI: 'company/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Company>> searchAll(data) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'POST', request_URI: 'company/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Company>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'POST', request_URI: 'company/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Company>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $companyserviceNAME, request_TYPE: 'POST', request_URI: 'company/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Company>> callAll(String postData) async {
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
    return parsed.map<Company>((json) => Company.fromJson(json)).toList();
  }

  static Future<Company> call(String postData) async {
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

    return Company.fromJson(responseJson);
  }
}
