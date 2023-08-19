import 'dart:io';

import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';
import 'package:http/http.dart' as http;

import '../../../config/setting.dart';
import 'TrainerTimeslot.dart';

class TrainertimeslotService {
  static Future<List<Trainertimeslot>> get() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'trainertimeslot', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<Trainertimeslot>> getAll() async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'trainertimeslot/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<Trainertimeslot> getOne(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'trainertimeslot/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Trainertimeslot> add(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'trainertimeslot', request_BODY: $data}";
    return await call(postData);
  }

  static Future<Trainertimeslot> update(data, id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'trainertimeslot/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<Trainertimeslot>> updateAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'PUT', request_URI: 'trainertimeslot', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<Trainertimeslot> delete(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'DELETE', request_URI: 'trainertimeslot/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<Trainertimeslot> remove(id) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'GET', request_URI: 'trainertimeslot/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<Trainertimeslot>> search(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'trainertimeslot/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Trainertimeslot>> searchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'trainertimeslot/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Trainertimeslot>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'trainertimeslot/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Trainertimeslot>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $fitnessserviceNAME, request_TYPE: 'POST', request_URI: 'trainertimeslot/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<Trainertimeslot>> callAll(String postData) async {
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
    return parsed.map<Trainertimeslot>((json) => Trainertimeslot.fromJson(json)).toList();
  }

  static Future<Trainertimeslot> call(String postData) async {
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

    return Trainertimeslot.fromJson(responseJson);
  }
}
