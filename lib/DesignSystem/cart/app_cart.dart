import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/shadow/app_shadow.dart';

import '../colors/app_colors.dart';
import '../icons/app_icons.dart';
import '../images/app_images.dart';
import '../typography/text_style.dart';

class AppCart {
  AppCart._();

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
              Row(
                children: [
                  TextStyles.heading6(price,AppColors.primary500Color)
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 36.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.silver1,
                      borderRadius: BorderRadius.all(Radius.circular(100.0))
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 16.0,),
                        Container(
                          height: 2.0,
                          width: 12.0,
                          color: AppColors.primary500Color,
                        ),
                        SizedBox(width: 12.0,),
                        Expanded(child: TextStyles.bodyM(number.toString(), AppColors.primary500Color, 'medium', TextAlign.center)),
                        SizedBox(width: 12.0,),
                        Icon(Icons.add, color: AppColors.primary500Color),
                        SizedBox(width: 4.0,),
                      ],
                    ),
                  ),
                  SvgPicture.asset(AppIcons.delete),

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
