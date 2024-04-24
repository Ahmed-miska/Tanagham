import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/features/admin_sup_supporting/widgets/textfield_of_sup_supporting.dart';

class SecondContainerOfSupSupporting extends StatelessWidget {
  const SecondContainerOfSupSupporting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            spreadRadius: 0,
            blurRadius: 20,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Supporting message :',
              style: AppTextStyles.styleRegular15.copyWith(
                color: const Color(0xFF063239),
              ),
            ),
            verticalSpace(20),
            const TextFieldOfSupSupporting(),
            verticalSpace(36),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.mainBrandColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text('Send', style: AppTextStyles.styleRegular15.copyWith(color: AppColors.mainBrandColor)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
