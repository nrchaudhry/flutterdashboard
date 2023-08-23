import 'dart:io';

import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import '../../../config/setting.dart';
import 'membertrainertimeslot.dart';


class MembertrainertimeslotService {
  static Future<List<Membertrainertimeslot>> get() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'membertrainertimeslot', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Membertrainertimeslot>> getAll() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'membertrainertimeslot/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Membertrainertimeslot> getOne(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'membertrainertimeslot/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Membertrainertimeslot> add(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'membertrainertimeslot', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Membertrainertimeslot> update(data, id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'membertrainertimeslot/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Membertrainertimeslot>> updateAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'membertrainertimeslot', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Membertrainertimeslot> delete(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'DELETE', request_URI: 'membertrainertimeslot/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Membertrainertimeslot> remove(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'membertrainertimeslot/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Membertrainertimeslot>> search(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'membertrainertimeslot/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Membertrainertimeslot>> searchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'membertrainertimeslot/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Membertrainertimeslot>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'membertrainertimeslot/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Membertrainertimeslot>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'membertrainertimeslot/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Membertrainertimeslot>> callAll(String postData) async {
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
    return parsed.map<Membertrainertimeslot>((json) => Membertrainertimeslot.fromJson(json)).toList();
  }

  static Future<Membertrainertimeslot> call(String postData) async {
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

    return Membertrainertimeslot.fromJson(responseJson);
  }
}
