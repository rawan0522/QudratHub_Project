import 'package:flutter/cupertino.dart';
import 'package:project/Models/Registration_Model.dart';
import 'package:project/Services/Registration_Service.dart';

class RegisterProvider extends ChangeNotifier {
  RegistrationModel? registrationModel;

  Future<void> registerUser({
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
    registrationModel = await RegisterService.registerService(
        name: name,
        email: email,
        phone: phone,
        password: password,
        taxRecodrd: taxRecodrd,
        adminName: adminName,
        adminEmail: adminEmail ,
        adminPhone: adminPhone,
        adminPassword: adminPassword,
        directorName: directorName,
        directorEmail: directorEmail,
        directorPhone: directorPhone,
        directorPassword:directorPassword
    );
    notifyListeners();
  }

  Future<void> logUser({
    required String email,
    required String password,
  }) async {
    registrationModel = await RegisterService.logService(
      email: email,
      password: password,
    );
    notifyListeners();
  }

}