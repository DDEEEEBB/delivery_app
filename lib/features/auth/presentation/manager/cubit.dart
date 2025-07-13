import 'package:delivery_app/features/auth/domain/use_cases/signup_use_case.dart';
import 'package:delivery_app/features/auth/presentation/manager/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/use_cases/login_use_case.dart';

class AuthCubit extends Cubit<AuthStates>{
  AuthCubit():super(Initstate());

  final LoginUseCase _loginUseCase =LoginUseCase();
  final SignupUseCase _signupUseCase =SignupUseCase();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  Future<void> login()async{
    emit(LoginLoadingState());
    try{
     await _loginUseCase.call(email: emailController.text, password: passwordController.text);
     emit(LoginSuccessState());
    }catch(e){
      emit(LoginErrorState());
    }
  }
  Future<void> signUp()async{
    emit(SignUpLoadingState());
    try{
     await _signupUseCase.call(email:emailController.text ,name:nameController.text ,password:passwordController.text ,phone:phoneController.text);
     emit(SignUpSuccessState());
    }catch(e){
      emit(SignUpErrorState());
    }
  }

}