class RegistrationModel {
  String message;
  bool status;
  RegistrationModel({required this.message , required this.status});

  factory RegistrationModel.fromjson(Map<String, dynamic> json) {
    return RegistrationModel(message: json["message"] , status: json["status"]);
  }
}