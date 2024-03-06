import 'package:flutter/material.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/shadow/app_shadow.dart';

import '../typography/text_style.dart';

class AppOrders {
  AppOrders._();

  static Widget myOrders(
      Color backgroundColor,
      double height,
      double width,
      String image,
      String title,
      String price,
      int number,
      String status,
      String btn,
      VoidCallback callBack) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow: AppShadow.shadow2,
          borderRadius: const BorderRadius.all(Radius.circular(32.0))),
      child: Row(
        children: [
          const SizedBox(
            width: 20.0,
          ),
          Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
                color: AppColors.silver1,
                borderRadius: const BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [TextStyles.heading6(title, AppColors.grey900)],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  TextStyles.bodyS('Qty = $number', AppColors.grey700, 'medium',
                      TextAlign.center)
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              (status == '')?Container():Row(
                children: [
                  Container(
                    height: 26.0,
                    width: 70,
                    decoration: BoxDecoration(
                        color: AppColors.greenTran,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6.0))),
                    child: Center(
                      child: TextStyles.bodyXS(
                          status,
                          AppColors.primary500Color,
                          'semiBold',
                          TextAlign.center),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextStyles.heading6(price, AppColors.primary500Color),
                  (btn == '')
                      ? Container()
                      : InkWell(
                          onTap: callBack,
                          child: AppButtons.buttonWithoutIcon(
                              btn,
                              130.0,
                              32.0,
                              AppColors.white,
                              36.0,
                              AppColors.primary500Color)),
                ],
              ),
            ],
          )),
          const SizedBox(
            width: 16.0,
          ),
        ],
      ),
    );
  }
}
