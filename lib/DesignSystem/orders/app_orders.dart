import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/icons/app_icons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/shadow/app_shadow.dart';

import '../typography/text_style.dart';

class AppOrders {
  AppOrders._();

  static Widget myCart(
      Color backgroundColor,
      double height,
      double width,
      String image,
      String title,
      String price,
      int number
      ) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow: AppShadow.shadow2,
          borderRadius: const BorderRadius.all(Radius.circular(32.0))),
      child: Row(
        children: [
          SizedBox(
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
          SizedBox(
            width: 16.0,
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  TextStyles.heading6(title,AppColors.grey900)
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  TextStyles.bodyS('Qty = $number',AppColors.grey700, 'medium' , TextAlign.center)
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  Container(
                    height: 26.0,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColors.greenTran,
                      borderRadius: BorderRadius.all(Radius.circular(6.0))
                    ),
                    child: Center(
                      child: TextStyles.bodyXS('In Delivery',AppColors.primary500Color, 'semiBold' , TextAlign.center),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextStyles.heading6(price,AppColors.primary500Color),
                  Container(
                    height: 36.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: AppColors.primary500Color,
                        borderRadius: BorderRadius.all(Radius.circular(100.0))
                    ),
                    child: Center(
                      child: TextStyles.bodyM('Track Order', AppColors.white, 'semiBold', TextAlign.center),
                    )
                  ),

                ],
              ),
            ],
          )),
          SizedBox(
            width: 16.0,
          ),
        ],
      ),
    );
  }
}