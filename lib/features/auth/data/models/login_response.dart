import 'package:delivery_app/features/auth/domain/entities/user_entity.dart';

class LoginResponse {
  String? message;
  User? user;
  String? token;

  LoginResponse({this.message, this.user, this.token});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ?  User.fromJson(json['user']) : null;
    token = json['token'];
  }

}

class User extends UserEntity{
  String? role;

  User({required super.name,required super.email, this.role});

 factory User.fromJson(Map<String, dynamic> json) {
   return User(name: json['name'], email: json['email'],role: json['role']);

  }

}