import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

import '../../../core/helpers/spacing.dart';

class ContainerOfMainItemTwo extends StatelessWidget {
  const ContainerOfMainItemTwo({
    super.key,
    required this.title,
    required this.number,
    required this.image,
  });
  final String title, image;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.mainBrandColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0E1F35).withOpacity(.16),
            offset: const Offset(0, 4),
            blurRadius: 8,
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: -18.w,
            top: -13.h,
            child: CircleAvatar(
              radius: 42.r,
              backgroundColor: AppColors.whiteColor,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(image),
                  const Spacer(),
                  Text(
                    number.toString(),
                    style: AppTextStyles.styleBold46InterWhite,
                  ),
                  const Spacer(),
                ],
              ),
              verticalSpace(10),
              Text(title, style: AppTextStyles.styleBold13AlmaraiWhite),
            ],
          ),
        ],
      ),
    );
  }
}
