import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class RowOfContainerOfSupSupporting extends StatelessWidget {
  const RowOfContainerOfSupSupporting({
    super.key,
    required this.title1,
    required this.title2,
  });
  final String title1, title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.mainBrandColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title1,
                  style: AppTextStyles.styleLight15Almarai.copyWith(color: AppColors.whiteColor),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.whiteColor,
                  border: Border.all(
                    color: AppColors.mainBrandColor,
                  )),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title2,
                    style: AppTextStyles.styleLight15Almarai.copyWith(color: AppColors.mainBrandColor),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
