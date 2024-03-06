import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/icons/app_icons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/orders/app_orders.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../colors/app_colors.dart';
import '../typography/text_style.dart';

class AppSheet {
  AppSheet._();

  static Widget leaveAReview(BuildContext context) {
    return Container(
      height: context.height * 0.8,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          )),
      child: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 3.0,
                  width: 38.0,
                  color: AppColors.grey300,
                )
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextStyles.heading4('Leave a Review', AppColors.grey900)
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            AppPadding.paddingOnlyWidget(
                Container(
                  height: 1.0,
                  color: AppColors.grey200,
                ),
                24.0,
                24.0,
                0.0,
                0.0),
            const SizedBox(
              height: 24.0,
            ),
            AppPadding.paddingOnlyWidget(
                AppOrders.myOrders(
                    AppColors.white,
                    160,
                    context.width,
                    AppImages.plant01,
                    'Yocca Plant',
                    '\$70',
                    2,
                    'Completed',
                    '',
                    () {}),
                24,
                24,
                0.0,
                0.0),
            const SizedBox(
              height: 24.0,
            ),
            AppPadding.paddingOnlyWidget(
                Container(
                  height: 1.0,
                  color: AppColors.grey200,
                ),
                24.0,
                24.0,
                0.0,
                0.0),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextStyles.heading4('How is your order?', AppColors.grey900)
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextStyles.bodyL(
                    'Please give your rating & also your review...',
                    AppColors.grey700,
                    'medium',
                    TextAlign.center)
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            AppPadding.paddingOnlyWidget(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      AppIcons.starBold,
                      height: 24.0,
                    ),
                    SvgPicture.asset(
                      AppIcons.starBold,
                      height: 24.0,
                    ),
                    SvgPicture.asset(
                      AppIcons.starBold,
                      height: 24.0,
                    ),
                    SvgPicture.asset(
                      AppIcons.starBold,
                      height: 24.0,
                    ),
                    SvgPicture.asset(
                      AppIcons.star,
                      height: 24.0,
                    ),
                  ],
                ),
                86,
                86,
                0.0,
                0.0),
            const SizedBox(
              height: 24.0,
            ),
            AppPadding.paddingOnlyWidget(
                Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                        color: AppColors.greenTran,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16.0)),
                        border: Border.all(
                            width: 1.0, color: AppColors.primary500Color)),
                    child: AppPadding.paddingOnlyWidget(
                        Row(
                          children: [
                            Expanded(
                                child: TextStyles.bodyM(
                                    'Amazing plant & fast delivery! 🔥🔥🔥',
                                    AppColors.grey900,
                                    'semiBold',
                                    TextAlign.left)),
                            SvgPicture.asset(AppIcons.image,
                                color: AppColors.primary500Color),
                          ],
                        ),
                        20,
                        20,
                        0.0,
                        0.0)),
                24.0,
                24.0,
                0.0,
                0.0),
            const SizedBox(
              height: 24.0,
            ),
            AppPadding.paddingOnlyWidget(
                Container(
                  height: 1.0,
                  color: AppColors.grey200,
                ),
                24.0,
                24.0,
                0.0,
                0.0),
            const SizedBox(
              height: 24.0,
            ),
            AppPadding.paddingOnlyWidget(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButtons.buttonWithoutIcon(
                        'Cancel',
                        (context.width / 2) - 36,
                        58.0,
                        AppColors.primary500Color,
                        100,
                        AppColors.primary100Color),
                    AppButtons.buttonWithoutIcon(
                        'Submit',
                        (context.width / 2) - 36,
                        58.0,
                        AppColors.white,
                        100,
                        AppColors.primary500Color),
                  ],
                ),
                24.0,
                24.0,
                0.0,
                0.0),
          ],
        ),
      ),
    );
  }
}
