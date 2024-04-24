import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

import '../../../core/helpers/constants.dart';
import 'custom_icon_container.dart';

class HomeAdminSecondListItem extends StatelessWidget {
  const HomeAdminSecondListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Image.asset(Assets.rehabilitationPlan, height: 40, width: 40),
          //const SizedBox(width: 10),
          horisontalSpace(10),
          Expanded(
            flex: 5,
            child: Text(
              'Rehabilitation  plan for Ahmad....                         ',
              style: AppTextStyles.styleLight15Almarai.copyWith(color: AppColors.blackColor),
              maxLines: 1,
            ),
          ),
          const CustomIconContainer(icon: Assets.doneIcon),
          //   const SizedBox(width: 10),
          horisontalSpace(10),
          const CustomIconContainer(icon: Assets.penIcon, color: AppColors.subTitleColor),
          //   const SizedBox(width: 10),
          horisontalSpace(10),
          const CustomIconContainer(icon: Assets.eyeIcon, color: Color(0xFFBF8931)),
          // const SizedBox(width: 10),
          horisontalSpace(10),
        ],
      ),
    );
  }
}
