

import '../../domain/entities/user_entity.dart';
import '../../domain/repo/repo.dart';
import '../data_source/data_source.dart';
import '../data_source/data_source_imp.dart';
import '../models/login_response.dart';

class AuthRepoImp implements AuthRepo{

  AuthDataSource authDataSource = AuthDataSourceImp();
  @override
  Future<UserEntity> login({required String email, required String password}) async{
    try{
      var response = await authDataSource.login(email: email, password: password);
      if(response.statusCode ==200 || response.statusCode ==201){
        LoginResponse loginResponse =LoginResponse.fromJson(response.data);
        return loginResponse.user!;
      }else{
        throw "error";
      }
    }catch(e){
      rethrow;
    }
  }  @override
  Future<UserEntity> signUp({required String email,required String password,required String name,required String phone}) async{
    try{
      var response = await authDataSource.signUp(email: email, password: password, name: name, phone: phone);
      if(response.statusCode ==200 || response.statusCode ==201){
        LoginResponse loginResponse =LoginResponse.fromJson(response.data);
        return loginResponse.user!;
      }else{
        throw "error";
      }
    }catch(e){
      rethrow;
    }
  }
}