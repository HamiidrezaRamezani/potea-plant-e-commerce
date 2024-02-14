import 'package:flutter/material.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/typography/text_style.dart';

class OnBoardingItems extends StatelessWidget {
  final String image;

  final String title;

  const OnBoardingItems({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: context.width,
            fit: BoxFit.cover,
          ),
          Container(
              height: context.height * 0.3,
              width: context.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                AppColors.silver1,
                AppColors.silver1.withOpacity(0.0),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              child: AppPadding.paddingOnlyWidget(
                  Column(
                    children: [
                      TextStyles.custom(title, AppColors.grey900, 32.0,
                          'urbanistBold', TextAlign.center)
                    ],
                  ),
                  35.0,
                  35.0,
                  0.0,
                  0.0))
        ],
      ),
    );
  }
}
