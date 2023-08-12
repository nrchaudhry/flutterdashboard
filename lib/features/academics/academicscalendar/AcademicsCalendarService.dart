import 'dart:io';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import 'AcademicsCalendar.dart';


class AcademicscalendarService {
  static Future<List<Academicscalendar>> get() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'academicscalendar', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Academicscalendar>> getAll() async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'academicscalendar/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Academicscalendar> getOne(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'academicscalendar/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Academicscalendar> add(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicscalendar', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Academicscalendar> update(data, id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'academicscalendar/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Academicscalendar>> updateAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'academicscalendar', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Academicscalendar> delete(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'academicscalendar/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Academicscalendar> remove(id) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'academicscalendar/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Academicscalendar>> search(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicscalendar/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Academicscalendar>> searchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicscalendar/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Academicscalendar>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicscalendar/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Academicscalendar>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'academicscalendar/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Academicscalendar>> callAll(String postData) async {
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
    return parsed.map<Academicscalendar>((json) => Academicscalendar.fromJson(json)).toList();
  }

  static Future<Academicscalendar> call(String postData) async {
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

    return Academicscalendar.fromJson(responseJson);
  }
}
