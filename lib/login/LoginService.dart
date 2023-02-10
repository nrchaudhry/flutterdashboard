import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:flutterdashboard/setting.dart';

import 'package:flutterdashboard/services/AppException.dart';
import 'package:flutterdashboard/services/HTTPService.dart';

import 'package:flutterdashboard/login/LoginModel.dart';

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

      LoginModel.applicationID = responseJson["application_ID"];
      LoginModel.applicationCODE = responseJson["application_CODE"];
      LoginModel.applicationservicePATH =
          responseJson["applicationservice_PATH"];
      LoginModel.applicationpathFRONTEND =
          responseJson["applicationpath_FRONTEND"];
      LoginModel.oauthservicePATH = responseJson["oauthservice_PATH"];
      LoginModel.applicationlogoPATH = responseJson["applicationlogo_PATH"];
//      LoginModel.authorities = responseJson["authorities"];

      LoginModel.personID = responseJson["person_ID"];
      LoginModel.userID = responseJson["user_ID"];
      LoginModel.userNAME = responseJson["user_NAME"];
      LoginModel.forenames = responseJson["forenames"];
      LoginModel.surname = responseJson["surname"];
      LoginModel.lastLOGIN = responseJson["last_LOGIN"];

      LoginModel.accessToken = accessToken;
      LoginModel.expiresin = responseJson["expires_in"];

      LoginModel.companyName = responseJson["CompanyName"];
      LoginModel.companyLink = responseJson["CompanyLink"];
      LoginModel.projectTitle = responseJson["ProjectTitle"];
      LoginModel.copyRights = responseJson["CopyRights"];
      LoginModel.headerName = responseJson["HeaderName"];
    } on SocketException {
      return false;
//      throw FetchDataException('No Internet Connection');
    }
    return true;
  }
}
