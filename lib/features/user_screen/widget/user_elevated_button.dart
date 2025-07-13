import 'package:delivery_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';

class UserElevatedButton extends StatelessWidget {
  const UserElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.transparent),
          left: BorderSide(color:Colors.transparent),
          right: BorderSide(color:Colors.transparent),
          top: BorderSide(color:Colors.transparent),
        ),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                overlayColor: AppColors.white.withOpacity(0.1),
                backgroundColor: AppColors.orange,
                side: BorderSide(width: size.width * 0.005,color: AppColors.orange),
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: AppColors.orange),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.SignInScreenForDriver);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textDirection: TextDirection.ltr,
                    "Driver",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                overlayColor: AppColors.white.withOpacity(0.1),
                backgroundColor: AppColors.orange,
                side: BorderSide(width: size.width * 0.005,color: AppColors.orange),
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: AppColors.black),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signInScreen);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textDirection: TextDirection.ltr,
                    "User",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
