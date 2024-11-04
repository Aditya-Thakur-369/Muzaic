import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzaic/common/color/app_colors.dart';

class CustomTextFormFieldRound extends StatelessWidget {
  const CustomTextFormFieldRound({
    super.key,
    this.title,
    this.controller,
    this.prefix,
    this.suffix,
    this.validator,
    this.obscureText = false,
    this.inputFormatters,
    this.keyboardType,
    this.onTap,
    this.isEnabled,
    this.onChanged,
  });

  final String? title;
  final TextEditingController? controller;
  final Widget? prefix;
  final Widget? suffix;

  final String? Function(String? value)? validator;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final bool? isEnabled;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.h),
      child: TextFormField(
        obscureText: obscureText,
        // scrollPadding: EdgeInsets.all(12),
        controller: controller,
        validator: validator,
        style: TextStyle(
          color: AppColors.black, // Set text color to black
        ),

        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          focusColor: AppColors.primaryBlue,
          // contentPadding: const EdgeInsets.all(24),
          hintText: title,
          hintStyle: TextStyle(fontSize: 14.sp, color: AppColors.grey),
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 15, 0),
            child: prefix,
          ),
          // prefixIconConstraints: BoxConstraints(
          //   minWidth: 0,
          //   minHeight: 0,
          // ),
          fillColor: Colors.white,

          suffixIconColor: AppColors.black,
          suffixIcon: suffix,

          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.h),
            borderSide: BorderSide(
              color: AppColors.greyOutline, // Color of the border
              width: 1.0, // Thickness of the border
            ),
          ),
        ),
      ),
    );
  }
}
