import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constant/app_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../widget/user_elevated_button.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          children: [
            SizedBox(height: size.height * 0.01),
            Center(
              child: Text(
                "Welcome To",
                style: TextStyle(
                  fontSize: 28,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: Text(
                "Delivery Application",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.orange,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: FadeIn(
                duration: Duration(seconds: 2),
                  child: Image.asset(AppAssets.userScreenImg,height: 300,width: 300,)),
            ),
            SizedBox(height: size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserElevatedButton()
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: Text(
                "Join as Guest\nor",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
              ),
            ),
            Center(
              child: Text(
                "Join as DeliveryBoy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  color: AppColors.orange,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
