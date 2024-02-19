import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../animations/lotties/app_lottie_animations.dart';
import '../colors/app_colors.dart';
import '../images/app_images.dart';
import '../typography/text_style.dart';

class AppDialog{
  AppDialog._();

  // congratulations
  static Widget congratulationDialog (String image, String title , String description ){
    return Dialog(
      backgroundColor: AppColors.white,
      child: SizedBox(
        height: 500,
        child: Column(
          children: [
            const SizedBox(height: 40.0,),
            SizedBox(
              height: 180.0,
              width: 180.0,
              child: Image.asset(image),
            ),
            const SizedBox(height: 32.0,),
            TextStyles.heading4(title, AppColors.grey900),
            const SizedBox(height: 16.0,),
            TextStyles.bodyL(description, AppColors.grey900, 'regular', TextAlign.center),
            const SizedBox(height: 32.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80.0,
                  width: 80.0,
                  child: Lottie.asset(AppLottieAnimations.appLoading),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}