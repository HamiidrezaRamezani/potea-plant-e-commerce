import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/icons/app_icons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/authentication_screens/register/register_page.dart';

import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class EasyLoginPage extends StatefulWidget {
  const EasyLoginPage({super.key});

  @override
  State<EasyLoginPage> createState() => _EasyLoginPageState();
}

class _EasyLoginPageState extends State<EasyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          ListTile(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(AppIcons.arrowLeft)),
          ),
          SizedBox(
            height: context.height * 0.3,
            child: Center(
              child: Image.asset(AppImages.loginVector,
                  width: context.width * 0.5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [TextStyles.heading1("Let's you in", AppColors.grey900)],
          ),
          AppPadding.paddingOnlyWidget(
              AppButtons.buttonWithIcon(
                  'Continue with Facebook',
                  context.width,
                  56.0,
                  AppColors.grey900,
                  16.0,
                  AppColors.white,
                  1.0,
                  AppColors.grey200,
                  AppIcons.facebook),
              24.0,
              24.0,
              30.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppButtons.buttonWithIcon(
                  'Continue with Google',
                  context.width,
                  56.0,
                  AppColors.grey900,
                  16.0,
                  AppColors.white,
                  1.0,
                  AppColors.grey200,
                  AppIcons.google),
              24.0,
              24.0,
              16.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppButtons.buttonWithIcon(
                  'Continue with Apple',
                  context.width,
                  56.0,
                  AppColors.grey900,
                  16.0,
                  AppColors.white,
                  1.0,
                  AppColors.grey200,
                  AppIcons.apple),
              24.0,
              24.0,
              16.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              SizedBox(
                height: 45.0,
                width: context.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: AppColors.grey200,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    TextStyles.bodyX(
                        'or', AppColors.grey700, 'semiBold', TextAlign.center),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: AppColors.grey200,
                      ),
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppButtons.buttonWithoutIcon(
                  'Sign in with password',
                  context.width,
                  58.0,
                  AppColors.white,
                  100,
                  AppColors.primary500Color),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextStyles.bodyM("Don't have an account?", AppColors.grey500,
                      'regular', TextAlign.center),
                  const SizedBox(width: 8.0,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const RegisterPage()));
                    },
                    child: TextStyles.bodyM('Sign up', AppColors.primary500Color,
                        'semiBold', TextAlign.center),
                  )
                ],
              ),
              24.0,
              24.0,
              16.0,
              0.0)
        ],
      ),
    );
  }
}
