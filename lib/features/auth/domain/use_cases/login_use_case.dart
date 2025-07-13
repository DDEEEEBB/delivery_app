import '../../data/repo/repo_imp.dart';
import '../entities/user_entity.dart';
import '../repo/repo.dart';

class LoginUseCase {
  AuthRepo repo =AuthRepoImp();
  Future<UserEntity> call({required String email, required String password}){
    return repo.login(email: email, password: password);
  }

}