import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/shadow/app_shadow.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/wallet_screens/top_up_screens/enter_your_pin_page.dart';

import '../../../../../DesignSystem/colors/app_colors.dart';
import '../../../../../DesignSystem/icons/app_icons.dart';
import '../../../../../DesignSystem/padding/app_padding.dart';
import '../../../../../DesignSystem/typography/text_style.dart';

class TopUpWalletMethodPaymentPage extends StatefulWidget {
  const TopUpWalletMethodPaymentPage({super.key});

  @override
  State<TopUpWalletMethodPaymentPage> createState() => _TopUpWalletMethodPaymentPageState();
}

class _TopUpWalletMethodPaymentPageState extends State<TopUpWalletMethodPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          AppPadding.paddingOnlyWidget(
              SizedBox(
                height: 56.0,
                width: context.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(AppIcons.arrowLeft),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        TextStyles.heading4('Top Up E-Wallet', AppColors.grey900),
                      ],
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextStyles.bodyL('Select the top up method you want to use.', AppColors.grey800, 'medium', TextAlign.center)
            ],
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Column(
            children: [
              Container(
                height: 80.0,
                width: context.width,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: AppShadow.shadow2
                ),
                child: AppPadding.paddingOnlyWidget(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.paypalIcon),
                          const SizedBox(width: 12.0,),
                          TextStyles.heading6('PayPal', AppColors.grey900)
                        ],
                      ),
                      Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white,
                          border: Border.all(width: 3.0, color: AppColors.primary500Color)
                        ),
                      )
                    ],
                  ),
                  24.0, 24.0, 0.0, 0.0
                ),
              ),
              const SizedBox(height: 24.0,),
              Container(
                height: 80.0,
                width: context.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: AppShadow.shadow2
                ),
                child: AppPadding.paddingOnlyWidget(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.google),
                            const SizedBox(width: 12.0,),
                            TextStyles.heading6('Google Pay', AppColors.grey900)
                          ],
                        ),
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                              border: Border.all(width: 3.0, color: AppColors.primary500Color)
                          ),
                        )
                      ],
                    ),
                    24.0, 24.0, 0.0, 0.0
                ),
              ),
              const SizedBox(height: 24.0,),
              Container(
                height: 80.0,
                width: context.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: AppShadow.shadow2
                ),
                child: AppPadding.paddingOnlyWidget(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.apple),
                            const SizedBox(width: 12.0,),
                            TextStyles.heading6('Apple Pay', AppColors.grey900)
                          ],
                        ),
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                              border: Border.all(width: 3.0, color: AppColors.primary500Color)
                          ),
                        )
                      ],
                    ),
                    24.0, 24.0, 0.0, 0.0
                ),
              ),
              const SizedBox(height: 24.0,),
              Container(
                height: 80.0,
                width: context.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: AppShadow.shadow2
                ),
                child: AppPadding.paddingOnlyWidget(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.visaIcon),
                            // ignore: prefer_const_constructors
                            SizedBox(width: 12.0,),
                            TextStyles.heading6('•••• •••• •••• •••• 4679', AppColors.grey900)
                          ],
                        ),
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                              border: Border.all(width: 3.0, color: AppColors.primary500Color)
                          ),
                          child: Center(
                            child: AppPadding.paddingOnlyWidget(
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                  color: AppColors.primary500Color,
                                  shape: BoxShape.circle
                                ),
                              ),
                              2.0, 2.0, 2.0, 2.0
                            ),
                          ),
                        )
                      ],
                    ),
                    24.0, 24.0, 0.0, 0.0
                ),
              ),
              const SizedBox(height: 24.0,),
              AppButtons.buttonWithoutIcon('Add New Card', context.width, 58.0, AppColors.primary500Color, 100.0, AppColors.primary100Color)
            ],
          ), 24.0, 24.0, 24.0, 0.0)
        ],
      ),
      bottomSheet: Container(
        height: 118.0,
        width: context.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
          color: AppColors.white,
          border: Border.all(width: 1.0, color: AppColors.grey100),
        ),
        child: Center(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: AppPadding.paddingOnlyWidget(
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const EnterYourPinPage()));
                      },
                      child: AppButtons.buttonWithoutIcon(
                        'Continue',
                        context.width,
                        58.0,
                        AppColors.white,
                        100.0,
                        AppColors.primary500Color,
                      ),
                    ),
                    24.0,
                    24.0,
                    0.0,
                    0.0))),
      ),
    );
  }
}
