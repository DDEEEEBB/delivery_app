
import 'package:dio/dio.dart';

import '../../../../core/services/network.dart';
import 'data_source.dart';

class AuthDataSourceImp implements AuthDataSource {
  Network network = Network();
  @override
  Future<Response> login({required String email, required String password}) {
    return network.dio.post(
      "/auth/signin",
      data: {"email": email, "password": password},
    );
  }@override
  Future<Response> signUp({required String email,required String password,required String name,required String phone}) {
    return network.dio.post(
      "/auth/signup",
      data: {
        "name": name,
        "email":email,
        "password":password,
        "rePassword":password,
        "phone":phone
      },
    );
  }
}
