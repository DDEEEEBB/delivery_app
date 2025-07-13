import 'package:delivery_app/features/auth/presentation/manager/cubit.dart';
import 'package:delivery_app/features/auth/presentation/manager/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constant/app_assets.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/custom_text_filed.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;

    final double fontSize = screenWidth * 0.045;
    final double buttonHeight = screenHeight * 0.07;

    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: AppColors.black,
          title: Text(
            "Register",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: fontSize + 2),
          ),
        ),
        body: BlocConsumer<AuthCubit,AuthStates>(
          listener: (context, state) {
            if(state is SignUpSuccessState){
              Navigator.pushNamed(context, AppRoutes.OrderScreenForUser);
            }if(state is SignUpLoadingState){

            }if(state is SignUpErrorState){

            }
          },
          builder: (context, state) {
            var cubit = context.watch<AuthCubit>();
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Image.asset(AppAssets.user,color: AppColors.orange,height: 300,),
                const SizedBox(height: 10),
                CustomTextFiled(
                  maxLines: 1,
                  controller: cubit.nameController,
                  labelText: "Name",
                  prefixIcon: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Image.asset(
                      AppAssets.user,
                      color: AppColors.orange,
                      height: 26,
                      width: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                CustomTextFiled(
                  maxLines: 1,
                  controller: cubit.phoneController,
                  labelText: "phone",
                  prefixIcon: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Image.asset(
                      AppAssets.user,
                      color: AppColors.orange,
                      height: 26,
                      width: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextFiled(
                  maxLines: 1,
                  controller: cubit.emailController,
                  labelText: "Email",
                  prefixIcon: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Image.asset(
                      AppAssets.mail,
                      color: AppColors.orange,
                      height: 26,
                      width: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextFiled(
                  maxLines: 1,
                  controller: cubit.passwordController,
                  labelText: "Password",
                  isPassword: true,
                  prefixIcon: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Image.asset(
                      AppAssets.lock,
                      color: AppColors.orange,
                      height: 26,
                      width: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextFiled(
                  maxLines: 1,
                  controller: cubit.passwordController,
                  labelText: "Re-Password",
                  isPassword: true,
                  prefixIcon: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Image.asset(
                      AppAssets.lock,
                      color: AppColors.orange,
                      height: 26,
                      width: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orange,
                    padding: EdgeInsets.symmetric(vertical: buttonHeight * 0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    cubit.signUp();
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: fontSize + 2,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.orange,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have Account ?",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: fontSize,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.inter().fontFamily,
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: WidgetStatePropertyAll(
                          AppColors.gray.withOpacity(0.1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, AppRoutes.signInScreen);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: AppColors.orange,
                          fontSize: fontSize + 1,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoogleFonts.inter().fontFamily,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
