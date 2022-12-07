import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.blue,
      decoration: InputDecoration(
        hintStyle: AppFonts.w700s17.copyWith(color: AppColors.darkGrey),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        hintText: '0 |_ _ _   _ _   _ _   _ _',
      ),
    );
  }
}
