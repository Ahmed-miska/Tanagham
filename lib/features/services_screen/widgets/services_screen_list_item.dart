import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

import '../models/list_view_item_model.dart';

class ServicesScreenListItem extends StatelessWidget {
  const ServicesScreenListItem({
    super.key,
    required this.model,
  });
  final ServisesScreenListItemModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 20,
        )
      ]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(model.image),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 22, bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title,
                        style: AppTextStyles.styleMedium18,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        model.subTitle,
                        style: AppTextStyles.styleRegular12,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, right: 11.5),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_outline,
                    color: Color(0xffB3B8C9),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11.5, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(
                      radius: 8,
                      backgroundColor: AppColors.secondryBrandColor,
                    ),
                    title: Text(
                      'Available',
                      style: AppTextStyles.styleMedium13,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.successColorLight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Center(
                      child: Text(
                        'Add  Now',
                        style: AppTextStyles.styleMedium12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
