import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class AdminRehabitionScreenMainListViewItem extends StatelessWidget {
  const AdminRehabitionScreenMainListViewItem({super.key, required this.text, required this.isSelected});
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? AppColors.mainBrandColor : AppColors.whiteColor,
          border: Border.all(
            color: AppColors.mainBrandColor.withOpacity(.15),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text(
            text,
            style: isSelected ? AppTextStyles.styleLight15Almarai.copyWith(color: AppColors.whiteColor) : AppTextStyles.styleLight15Almarai,
          ),
        ),
      ),
    );
  }
}
