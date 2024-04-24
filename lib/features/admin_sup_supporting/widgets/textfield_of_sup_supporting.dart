import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class TextFieldOfSupSupporting extends StatelessWidget {
  const TextFieldOfSupSupporting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 8,
      decoration: InputDecoration(
        fillColor: AppColors.whiteColor,
        filled: true,
        border: boorder(),
        enabledBorder: boorder(),
        focusedBorder: boorder(),
        hintText: ' solution details*',
        hintStyle: AppTextStyles.styleRegular15.copyWith(
          color: AppColors.mainBrandColor,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
    );
  }

  OutlineInputBorder boorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black.withOpacity(.25)),
    );
  }
}
