
import '../entities/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> login({required String email,required String password});
  Future<UserEntity> signUp({required String email,required String password,required String name,required String phone});


}