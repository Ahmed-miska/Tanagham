import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/features/admin_profile/admin_profile.dart';

import '../../../core/helpers/constants.dart';

class HomeAdminAppBar extends StatelessWidget {
  const HomeAdminAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Tanagham',
          style: AppTextStyles.styleRegular22Pacifico,
        ),
        const Spacer(),
        SvgPicture.asset(Assets.notification),
        GestureDetector(
          onTap: () {
            push(const AdminProfile());
          },
          child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.mainBrandColor.withOpacity(.5),
            backgroundImage: const AssetImage(Assets.doctorAvatar,),
            
          ),
        ),
      ],
    );
  }
}
