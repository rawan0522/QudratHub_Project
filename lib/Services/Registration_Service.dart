import 'package:dio/dio.dart';
import 'package:project/Models/Registration_Model.dart';
class RegisterService {
  static Dio dio = Dio();
  static Future<RegistrationModel> registerService({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String taxRecodrd,
    required String adminName,
    required String adminEmail,
    required String adminPhone,
    required String adminPassword,
    required String directorName,
    required String directorEmail,
    required String directorPhone,
    required String directorPassword,
  }) async {
    try {
      Response response = await dio
          .post("http://qudratapi.runasp.net/api/Company/SignUp", data: {
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "taxRecodrd": taxRecodrd,
        "adminName": adminName,
        "adminEmail": adminEmail ,
        "adminPhone": adminPhone,
        "adminPassword": adminPassword,
        "directorName": directorName,
        "directorEmail": directorEmail,
        "directorPhone": directorPhone,
        "directorPassword":directorPassword
          });
      if (response.statusCode == 200) {
        return RegistrationModel.fromjson(response.data);
      } else {
        throw "Issue with registration";
      }
    } catch (error) {
      throw "Registration error: $error";
    }
  }

  static Future<RegistrationModel> logService({
    required String email,
    required String password,
  }) async {
    try {
      Map data = { "email": email,"password": password};
      Response response =
      await dio.post("http://qudratapi.runasp.net/api/Company/Login", data: data);
      if (response.statusCode == 200) {
        return RegistrationModel.fromjson(response.data);
      } else {
        throw "Issue with log in";
      }
    } catch (error) {
      throw "Log in error: $error";
    }
  }


  static Future<RegistrationModel> Update({
    required String email,
    required String password,
  }) async {
    try {
      Map data = { "email": email,"password": password};
      Response response =
      await dio.put("http://qudratapi.runasp.net/api/Company/ForgetPassword?email=user@example.com&password=stringst1", data: data);
      if (response.statusCode == 200) {
        return RegistrationModel.fromjson(response.data);
      } else {
        throw "Issue with log in";
      }
    } catch (error) {
      throw "Log in error: $error";
    }
  }
}