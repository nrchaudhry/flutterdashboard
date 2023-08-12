import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'Institutecourse.dart';

class InstitutecourseService {
  static Future<List<Institutecourse>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'institutecourse', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Institutecourse>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'institutecourse/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Institutecourse> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'institutecourse/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Institutecourse> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'institutecourse', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Institutecourse> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'institutecourse/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Institutecourse>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'institutecourse', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Institutecourse> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'institutecourse/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Institutecourse> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'institutecourse/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Institutecourse>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'institutecourse/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Institutecourse>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'institutecourse/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Institutecourse>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'institutecourse/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Institutecourse>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'institutecourse/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Institutecourse>> callAll(String postData) async {
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
    return parsed.map<Institutecourse>((json) => Institutecourse.fromJson(json)).toList();
  }

  static Future<Institutecourse> call(String postData) async {
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

    return Institutecourse.fromJson(responseJson);
  }
}
