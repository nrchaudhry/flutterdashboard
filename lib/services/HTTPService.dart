import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/login/Login.dart';

class HTTPService {
  static Future<dynamic> call(String postData) async {
    dynamic responseJson;
    try {
      // final response = await http.post(
      //   Uri.parse("${Login.applicationservicePATH}apigateway"),
      //   headers: {
      //     HttpHeaders.authorizationHeader: 'bearer ${Login.accessToken}',
      //   },
      //   body: postData,
      // );

      final response = await http.post(
        Uri.parse("http://api.cwiztech.com:8079/v1/apigateway"),
        headers: {
          HttpHeaders.authorizationHeader:
              'bearer 74418764-1024-4666-afc9-db751a814768',
        },
        body: postData,
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  static dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while communication with server with status code : ${response.statusCode}');
    }
  }
}
