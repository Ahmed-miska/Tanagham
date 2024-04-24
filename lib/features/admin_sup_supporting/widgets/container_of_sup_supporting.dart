import 'package:flutter/widgets.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/features/admin_sup_supporting/widgets/row_of_sup_supporting.dart';

class ContanierOfSupSupporting extends StatelessWidget {
  const ContanierOfSupSupporting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff0E1F35).withOpacity(.12),
            spreadRadius: 0,
            blurRadius: 7,
          )
        ],
      ),
      child: const Column(
        children: [
          RowOfContainerOfSupSupporting(title1: 'Patient Name:', title2: 'Amira Abdul Rahman'),
          RowOfContainerOfSupSupporting(title1: 'Patient Email::', title2: 'amira@gmail.com '),
          RowOfContainerOfSupSupporting(title1: 'Problem Type:', title2: 'Technically'),
          RowOfContainerOfSupSupporting(title1: ' Problem description:', title2: 'I need to change my password,  but I forget my old password'),
        ],
      ),
    );
  }
}
