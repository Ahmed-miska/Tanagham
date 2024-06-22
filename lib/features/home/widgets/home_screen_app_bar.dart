import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/features/home_admin/home_admin_screen.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Tanaghum',
          style: AppTextStyles.styleRegular22Pacifico,
        ),
        const Spacer(),
        GestureDetector(
            onTap: () {
              push(const HomeAdminScreen());
            },
            child: SvgPicture.asset(Assets.notification)),
      ],
    );
  }
}
