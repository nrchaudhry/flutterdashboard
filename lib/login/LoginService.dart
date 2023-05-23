import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:flutterdashboard/config/setting.dart';

import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';

import 'package:flutterdashboard/login/Login.dart';

class LoginService {
  static Future<bool> login(String userName, String password) async {
    dynamic responseJson;
    try {
      final response = await http.post(
        Uri.parse(
            "${oauthURL}oauth/token?username=$userName&password=$password&grant_type=password"),
        headers: {
          HttpHeaders.authorizationHeader: 'Basic $authBasic',
        },
      );

      responseJson = HTTPService.returnResponse(response);
      String accessToken = responseJson["access_token"];

      final loginResponse = await http.post(
        Uri.parse("${oauthURL}login"),
        headers: {
          HttpHeaders.authorizationHeader: 'bearer $accessToken',
        },
        body: json.encode({
          'application_CODE': applicationCode,
        }),
      );

      responseJson = HTTPService.returnResponse(loginResponse);

      Login.applicationID = responseJson["application_ID"];
      Login.applicationCODE = responseJson["application_CODE"];
      Login.applicationservicePATH =
          responseJson["applicationservice_PATH"];
      Login.applicationpathFRONTEND =
          responseJson["applicationpath_FRONTEND"];
      Login.oauthservicePATH = responseJson["oauthservice_PATH"];
      Login.applicationlogoPATH = responseJson["applicationlogo_PATH"];
//      Login.authorities = responseJson["authorities"];

      Login.personID = responseJson["person_ID"];
      Login.userID = responseJson["user_ID"];
      Login.userNAME = responseJson["user_NAME"];
      Login.forenames = responseJson["forenames"];
      Login.surname = responseJson["surname"];
      Login.lastLOGIN = responseJson["last_LOGIN"];

      Login.accessToken = accessToken;
      Login.expiresin = responseJson["expires_in"];

      Login.companyName = responseJson["CompanyName"];
      Login.companyLink = responseJson["CompanyLink"];
      Login.projectTitle = responseJson["ProjectTitle"];
      Login.copyRights = responseJson["CopyRights"];
      Login.headerName = responseJson["HeaderName"];
    } on SocketException {
      return false;
//      throw FetchDataException('No Internet Connection');
    }
    return true;
  }
}
