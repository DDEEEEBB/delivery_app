
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';

class CustomTextFiled extends StatefulWidget {
  final Widget? prefix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool isPassword;
  final int? maxLines;
  const CustomTextFiled({
    super.key,
    this.prefix,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.hintText,
    this.validator,
    this.labelText,
    this.maxLines,
    this.isPassword = false,
  });

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? isShow : false,
      maxLines: widget.maxLines,
      controller: widget.controller,
      validator: widget.validator,
      decoration: InputDecoration(
          hintStyle: TextStyle(
              color:AppColors.orange,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.inter().fontFamily),
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:  AppColors.orange),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:  AppColors.orange),
            borderRadius: BorderRadius.circular(16),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:AppColors.orange),
            borderRadius: BorderRadius.circular(16),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.red)),
          prefix: widget.prefix,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    isShow = !isShow;
                    setState(() {});
                  },
                  icon: Icon(isShow
                      ? Icons.visibility_rounded
                      : Icons.visibility_off_rounded),
                  color:AppColors.orange,
                )
              : widget.suffixIcon,
          labelText: widget.labelText,
          labelStyle: TextStyle(
              color:  AppColors.orange)),
    );
  }
}
