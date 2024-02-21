import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';
import 'package:potea_plant_e_commerce/DesignSystem/shadow/app_shadow.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../colors/app_colors.dart';
import '../typography/text_style.dart';

class AppNotificationCard{
  AppNotificationCard._();

  static Widget notificationCard (BuildContext context , String image, String title , String description){
    return  Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        boxShadow: AppShadow.shadow2
      ),
      width: context.width,
      child: AppPadding.paddingAllWidget(
        Row(
          children: [
            Container(
              height: 68.0,
              width: 68.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: AppColors.gradientGreen,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  )
              ),
              child: Center(
                child: SvgPicture.asset(image),
              ),
            ),
            const SizedBox(width: 16.0,),
            Expanded(child: Column(children: [
              Row(
                children: [
                  TextStyles.heading6(title, AppColors.grey900)
                ],
              ),
              const SizedBox(height: 8.0,),
              Row(
                children: [
                  TextStyles.bodyM(description, AppColors.grey900, 'medium', TextAlign.left)
                ],
              )
            ],)),
          ],
        ),
        16.0
      ),
    );
  }
}