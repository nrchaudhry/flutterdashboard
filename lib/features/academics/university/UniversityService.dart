import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';

import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/login/Login.dart';

import 'News.dart';

class NewsService {
  static Future<List<News>> get() async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'GET', request_URI: 'news', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<List<News>> getAll() async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'GET', request_URI: 'news/all', request_BODY: ''}";
    return await callAll(postData);
  }

  static Future<News> getOne(id) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'GET', request_URI: 'news/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<News> add(data) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'POST', request_URI: 'news', request_BODY: $data}";
    return await call(postData);
  }

  static Future<News> update(data, id) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'PUT', request_URI: 'news/ $id', request_BODY: $data}";
    return await call(postData);
  }

  static Future<List<News>> updateAll(data) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'PUT', request_URI: 'news', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<News> delete(id) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'DELETE', request_URI: 'news/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<News> remove(id) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'GET', request_URI: 'news/remove/ $id', request_BODY: ''}";
    return await call(postData);
  }

  static Future<List<News>> search(data) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'POST', request_URI: 'news/search', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<News>> searchAll(data) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'POST', request_URI: 'news/search/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<News>> advancedSearch(data) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'POST', request_URI: 'news/advancedsearch', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<News>> advancedSearchAll(data) async {
    var postData =
        "{service_NAME: $newsserviceNAME, request_TYPE: 'POST', request_URI: 'news/advancedsearch/all', request_BODY: $data}";
    return await callAll(postData);
  }

  static Future<List<News>> callAll(String postData) async {
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
    return parsed.map<News>((json) => News.fromJson(json)).toList();
  }

  static Future<News> call(String postData) async {
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

    return News.fromJson(responseJson);
  }
}
