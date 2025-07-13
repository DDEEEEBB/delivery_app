import 'package:delivery_app/features/Splash/presentation/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import '../../features/auth/presentation/screens/sign_in_screen.dart';
import '../../features/auth/presentation/screens/sign_in_screen_for_driver.dart';
import '../../features/auth/presentation/screens/sign_up_screen.dart';
import '../../features/auth/presentation/screens/sign_up_screen_for_driver.dart';
import '../../features/order_screen_for_driver/order_screen_for_driver.dart';
import '../../features/order_screen_for_user/order_screen_for_user.dart';
import '../../features/user_screen/screen/user_screen.dart';


class AppRoutes {
  AppRoutes._();
  static const String SplashScreen ="/";
  static const String userScreen ="user";
  static const String signInScreen ="signIn";
  static const String SignUpScreen ="signUp";
  static const String OrderScreenForUser ="orderForUser";
  static const String OrderScreenForDriver ="orderForDriver";
  static const String SignInScreenForDriver ="signInForDriver";
  static const String SignUpScreenForDriver ="signUpForDriver";



}


class ROUTES{
  ROUTES._();
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.SplashScreen :(_)=> SplashScreen(),
    AppRoutes.userScreen :(_)=> UserScreen(),
    AppRoutes.signInScreen :(_)=> SignInScreen(),
    AppRoutes.SignUpScreen :(_)=> SignUpScreen(),
    AppRoutes.OrderScreenForUser :(_)=> OrderScreenForUser(),
    AppRoutes.OrderScreenForDriver :(_)=> OrderScreenForDriver(),
    AppRoutes.SignInScreenForDriver :(_)=> SignInScreenForDriver(),
    AppRoutes.SignUpScreenForDriver :(_)=> SignUpScreenForDriver(),
  };
}