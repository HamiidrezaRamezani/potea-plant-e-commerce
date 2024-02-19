import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/reset_password_screens/forgot_password_verify_page.dart';

import '../../../DesignSystem/buttons/app_buttons.dart';
import '../../../DesignSystem/icons/app_icons.dart';
import '../../../DesignSystem/images/app_images.dart';
import '../../../DesignSystem/typography/text_style.dart';

class ForgetPasswordSelectPage extends StatefulWidget {
  const ForgetPasswordSelectPage({super.key});

  @override
  State<ForgetPasswordSelectPage> createState() =>
      _ForgetPasswordSelectPageState();
}

class _ForgetPasswordSelectPageState extends State<ForgetPasswordSelectPage> {

  bool isSelectSms = false;

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
            title: TextStyles.heading4('Forgot Password', AppColors.grey900),
          ),
          const SizedBox(
            height: 33.0,
          ),
          SizedBox(
            height: context.height * 0.25,
            child: Center(
              child: Image.asset(AppImages.forgotPasswordVector,
                  width: context.width * 0.7),
            ),
          ),
          AppPadding.paddingOnlyWidget(
              TextStyles.custom(
                  'Select which contact details should we use to reset your password',
                  AppColors.grey900,
                  18.0,
                  'urbanistMedium',
                  TextAlign.left),
              24.0,
              24.0,
              33.0,
              0.0),
          AppPadding.paddingOnlyWidget(InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            onTap: (){
              setState(() {
                isSelectSms = true;
              });
            },
            child: Container(
              height: 128.0,
              width: context.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                border: Border.all(width: 2.0, color: (isSelectSms == true)? AppColors.primary500Color:AppColors.grey200)
              ),
              child: Center(
                child: AppPadding.paddingOnlyWidget(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenTran
                        ),
                        child: Center(
                          child: SvgPicture.asset(AppIcons.chatBoldIcon),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                        width: context.width -  195,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                TextStyles.bodyM('via SMS:', AppColors.grey600, 'medium', TextAlign.center),
                              ],
                            ),
                            const SizedBox(height: 8.0,),
                            Row(
                              children: [
                                TextStyles.bodyL('+1 111 ***** 99', AppColors.black, 'bold', TextAlign.center),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  24.0, 24.0, 0.0, 0.0
                ),
              ),
            ),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            onTap: (){
              setState(() {
                isSelectSms = false;
              });
            },
            child: Container(
              height: 128.0,
              width: context.width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                  border: Border.all(width: 2.0, color: (isSelectSms == false)? AppColors.primary500Color:AppColors.grey200)
              ),
              child: Center(
                child: AppPadding.paddingOnlyWidget(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greenTran
                          ),
                          child: Center(
                            child: SvgPicture.asset(AppIcons.messageBoldIcon, height: 32.0, width: 32.0, color: AppColors.primary500Color,),
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                          width: context.width -  195,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  TextStyles.bodyM('via Email:', AppColors.grey600, 'medium', TextAlign.center),
                                ],
                              ),
                              const SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  TextStyles.bodyL('hamii*****0121@gmail.com', AppColors.black, 'bold', TextAlign.center),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    24.0, 24.0, 0.0, 0.0
                ),
              ),
            ),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPasswordVerifyPage()));
                },
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                child: AppButtons.buttonWithoutIcon(
                    'Continue',
                    context.width,
                    58.0,
                    AppColors.white,
                    100,
                    AppColors.primary500Color),
              ),
              24.0,
              24.0,
              33.0,
              0.0),
        ],
      ),
    );
  }
}
