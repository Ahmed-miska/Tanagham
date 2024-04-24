import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/theming/text_styles.dart';

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
        SvgPicture.asset(Assets.notification),
      ],
    );
  }
}
