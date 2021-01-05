import 'package:registration_ui/user-info.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

var userInfo;
void httpService(String userName, String password) async {
  print(userName);
  String url =
      'http://ec2-65-0-129-29.ap-south-1.compute.amazonaws.com:8080/drops/user/signin?userEmail=$userName&password=$password';
  var response = await http.post(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    userInfo = new UserInfo(jsonResponse['email'], jsonResponse['fullName'],
        jsonResponse['phoneNo'], jsonResponse['userId']);
    print(userInfo.fullName);
  } else {
    print('other status code');
  }
}
