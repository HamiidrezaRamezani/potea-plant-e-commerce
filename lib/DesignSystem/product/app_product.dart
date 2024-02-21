import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';

import '../colors/app_colors.dart';
import '../icons/app_icons.dart';
import '../typography/text_style.dart';

class AppProduct {
  AppProduct._();

  // Special Product
  static Widget specialProduct(String image, String title, String rate,
      String status, String price, bool isPopular, VoidCallback isPopularSelect) {
    return Column(
      children: [
        Container(
            height: 240.0,
            width: 240.0,
            decoration: BoxDecoration(
                color: AppColors.silver1,
                borderRadius: const BorderRadius.all(Radius.circular(38.0))),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(image),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: AppPadding.paddingOnlyWidget(
                        InkWell(
                          onTap: isPopularSelect,
                          child: SvgPicture.asset(
                            (isPopular) ? AppIcons.heartBoldIcon : AppIcons.heart,
                            color: AppColors.primary500Color,
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                        20.0,
                        0.0,
                        20.0,
                        0.0))
              ],
            )),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TextStyles.heading4(title, AppColors.grey900)],
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.starBoldIcon),
            const SizedBox(
              width: 12.0,
            ),
            TextStyles.bodyL(
                rate, AppColors.grey700, 'medium', TextAlign.center),
            const SizedBox(
              width: 12.0,
            ),
            Container(
              height: 18.0,
              width: 2.0,
              color: AppColors.grey700,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Container(
              height: 24.0,
              width: 70.0,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                  color: AppColors.white,
                  border:
                      Border.all(width: 1.0, color: AppColors.primary500Color)),
              child: Center(
                child: TextStyles.bodyXS(status, AppColors.primary500Color,
                    'semiBold', TextAlign.center),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextStyles.heading4("\$$price", AppColors.primary500Color)
          ],
        )
      ],
    );
  }

  // popular Product
  static Widget popularProduct(
      String image, String title, String rate, String status, String price, bool isPopular, VoidCallback isPopularSelect) {
    return Column(
      children: [
        Container(
            height: 180.0,
            width: 180.0,
            decoration: BoxDecoration(
                color: AppColors.silver1,
                borderRadius: const BorderRadius.all(Radius.circular(38.0))),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(image),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: AppPadding.paddingOnlyWidget(
                        InkWell(
                          onTap: isPopularSelect,
                          child: SvgPicture.asset(
                            (isPopular) ? AppIcons.heartBoldIcon:AppIcons.heart,
                            color: AppColors.primary500Color,
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                        20.0,
                        0.0,
                        20.0,
                        0.0))
              ],
            )),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TextStyles.heading6(title, AppColors.grey900)],
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.starBoldIcon),
            const SizedBox(
              width: 12.0,
            ),
            TextStyles.bodyL(
                rate, AppColors.grey700, 'medium', TextAlign.center),
            const SizedBox(
              width: 12.0,
            ),
            Container(
              height: 18.0,
              width: 2.0,
              color: AppColors.grey700,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Container(
              height: 24.0,
              width: 70.0,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                  color: AppColors.white,
                  border:
                      Border.all(width: 1.0, color: AppColors.primary500Color)),
              child: Center(
                child: TextStyles.bodyXS(status, AppColors.primary500Color,
                    'semiBold', TextAlign.center),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextStyles.heading4("\$$price", AppColors.primary500Color)
          ],
        )
      ],
    );
  }
}
