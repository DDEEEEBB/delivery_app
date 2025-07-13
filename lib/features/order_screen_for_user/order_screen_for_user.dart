import 'package:animate_do/animate_do.dart';
import 'package:delivery_app/core/constant/app_assets.dart';
import 'package:delivery_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreenForUser extends StatelessWidget {
  const OrderScreenForUser({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.white,
          child: Image.asset(AppAssets.plus, color: AppColors.orange),
        ),
        body: Column(
          children: [
            SizedBox(height: height * 0.02),
            FadeInDown(
              duration: Duration(seconds: 2),
              child: Text(
                "Order Now",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                  fontSize: width * 0.06,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
              ),
            ),
            FadeIn(
              duration: Duration(seconds: 2),
              child: Image.asset(AppAssets.box),
            ),
            Expanded(
              child: FadeIn(
                duration: Duration(seconds: 2),
                child: Container(color: AppColors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
