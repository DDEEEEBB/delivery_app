import 'package:animate_do/animate_do.dart';
import 'package:delivery_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/app_assets.dart';
import '../../../../core/theme/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            SlideInRight
              (
                duration: const Duration(seconds: 2),
                onFinish: (direction) {
                  Navigator.pushReplacementNamed(context, AppRoutes.userScreen);
                },
                child:Image.asset(AppAssets.delix,fit: BoxFit.contain,width: 300,height: 300,)
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
