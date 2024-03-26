import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/wallet_screens/top_up_screens/top_up_wallet_method_payment_page.dart';

import '../../../../../DesignSystem/colors/app_colors.dart';
import '../../../../../DesignSystem/icons/app_icons.dart';
import '../../../../../DesignSystem/padding/app_padding.dart';
import '../../../../../DesignSystem/typography/text_style.dart';

class TopUpWalletPage extends StatefulWidget {
  const TopUpWalletPage({super.key});

  @override
  State<TopUpWalletPage> createState() => _TopUpWalletPageState();
}

class _TopUpWalletPageState extends State<TopUpWalletPage> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextStyles.bodyL('Enter the amount of top up', AppColors.grey800, 'medium', TextAlign.center)
            ],
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 120.0,
            width: context.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              border: Border.all(
                width: 2.0,
                color: AppColors.primary500Color
              )
            ),
            child: Center(
              child: TextStyles.heading1('\$100', AppColors.primary500Color),
            ),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(SizedBox(
            height: 160.0,
            width: context.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(width: 2.0, color: AppColors.primary500Color),
                        borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$10', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    ),
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(width: 2.0, color: AppColors.primary500Color),
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$20', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    ),
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(width: 2.0, color: AppColors.primary500Color),
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$50', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(width: 2.0, color: AppColors.primary500Color),
                        borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$100', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    ),
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(width: 2.0, color: AppColors.primary500Color),
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$200', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    ),
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(width: 2.0, color: AppColors.primary500Color),
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$250', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(width: 2.0, color: AppColors.primary500Color),
                        borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$500', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    ),
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(width: 2.0, color: AppColors.primary500Color),
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$750', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    ),
                    Container(
                      height: 38.0,
                      width: 116,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(width: 2.0, color: AppColors.primary500Color),
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: Center(
                        child: TextStyles.bodyL('\$1000', AppColors.primary500Color, 'semiBold', TextAlign.center),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ), 24.0, 24.0, 24.0, 0.0), 
          AppPadding.paddingOnlyWidget(InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const TopUpWalletMethodPaymentPage()));
            },
            child: AppButtons.buttonWithoutIcon('Continue', context.width, 58, AppColors.white, 100.0, AppColors.primary500Color),
          ), 24.0, 24.0, 24.0, 24.0)
        ],
      ),
    );
  }
}
