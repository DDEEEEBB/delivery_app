import '../../data/repo/repo_imp.dart';
import '../entities/user_entity.dart';
import '../repo/repo.dart';

class SignupUseCase {
  AuthRepo repo =AuthRepoImp();
  Future<UserEntity> call({required String email,required String password,required String name,required String phone}){
    return repo.signUp(email: email, password: password, name: name, phone: phone);
  }

}