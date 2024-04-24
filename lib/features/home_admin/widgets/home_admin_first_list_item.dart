import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

import '../../../core/helpers/constants.dart';
import 'custom_icon_container.dart';

class HomeAdminFirstListItem extends StatelessWidget {
  const HomeAdminFirstListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        children: [
          Image.asset(Assets.userAvatar),
          // const SizedBox(width: 10),
          horisontalSpace(10),
          Expanded(
            child: Text(
              'Alia Salah Al-Dosari',
              style: AppTextStyles.styleLight15Almarai.copyWith(color: AppColors.blackColor),
              maxLines: 1,
            ),
          ),
          const CustomIconContainer(icon: Assets.penIcon),
          SizedBox(width: 10.w),
          const CustomIconContainer(icon: Assets.eyeIcon),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
