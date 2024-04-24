import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class RowOfUsersScreen extends StatelessWidget {
  const RowOfUsersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Total number of users:',
          style: AppTextStyles.styleLight15Almarai,
        ),
        Text(
          '50',
          style: AppTextStyles.styleBold13AlmaraiWhite.copyWith(color: AppColors.mainBrandColor),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF0E1F35).withOpacity(.12),
                offset: const Offset(0, 4),
                blurRadius: 8,
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Text(
                  'Show',
                  style: AppTextStyles.styleLight14MainBrand.copyWith(color: const Color(0xFF063239).withOpacity(.61)),
                ),
                SvgPicture.asset(
                  'assets/icons/Icon Frame.svg',
                  height: 18,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
