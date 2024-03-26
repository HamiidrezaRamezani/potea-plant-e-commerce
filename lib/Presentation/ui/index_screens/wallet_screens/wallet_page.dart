import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/DesignSystem/wallet/app_wallets.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/wallet_screens/top_up_screens/top_up_wallet_page.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/wallet_screens/transaction_screens/transaction_history_page.dart';

import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
                        Image.asset('assets/images/png/logo.png',
                            width: 28.0),
                        const SizedBox(
                          width: 16.0,
                        ),
                        TextStyles.heading4('My E-Wallet', AppColors.grey900),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(AppIcons.search),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(AppIcons.moreCircle),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(40.0)),
              gradient: LinearGradient(
                colors: AppColors.gradientGreen,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
            width: context.width,
            child: Stack(
              children: [
                Image.asset(AppImages.creditVector, fit: BoxFit.fill,),
                Align(
                  alignment: Alignment.center,
                  child: AppPadding.paddingOnlyWidget(
                    Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextStyles.heading5('Andrew Ainsley', AppColors.white),
                                Image.asset(AppImages.visaLogo)
                              ],
                            ),
                            Row(
                              children: [
                                TextStyles.bodyM('**** **** **** 3629', AppColors.white, 'semiBold', TextAlign.start),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 24.0,),
                        Column(children: [
                          Row(
                            children: [
                              TextStyles.bodyM('Your balance', AppColors.white, 'semiBold', TextAlign.start),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyles.heading1('\$9,449', AppColors.white),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TopUpWalletPage()));
                                },
                                child: AppButtons.buttonWithIcon('Top Up', 120, 38, AppColors.primary500Color, 100.0, AppColors.white, 0.0, AppColors.white, AppIcons.downloadBoldIcon),
                              )
                            ],
                          )
                        ],)
                      ],
                    ),
                    24.0, 24.0, 24.0, 24.0
                  ),
                )
              ],
            ),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextStyles.heading5('Transaction History', AppColors.grey900),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TransactionHistoryPage()));
                },
                child: TextStyles.bodyL('See All', AppColors.primary500Color, 'bold', TextAlign.center),
              )
            ],
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Expanded(child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              AppWallets.transactionItem(context.width, 60.0, 'Prayer Plant', AppImages.plant01, '\$29', 'Dec 15, 2024 | 10:00 AM', false),
              const SizedBox(height: 24.0,),
              AppWallets.transactionItem(context.width, 60.0, 'Top Up Wallet', AppImages.walletVector, '\$100', 'Dec 14, 2024 | 16:42 PM', true),
              const SizedBox(height: 24.0,),
              AppWallets.transactionItem(context.width, 60.0, 'Prayer Plant', AppImages.plant01, '\$29', 'Dec 15, 2024 | 10:00 AM', false),
              const SizedBox(height: 24.0,),
              AppWallets.transactionItem(context.width, 60.0, 'Top Up Wallet', AppImages.walletVector, '\$100', 'Dec 14, 2024 | 16:42 PM', true),
              const SizedBox(height: 24.0,),
              AppWallets.transactionItem(context.width, 60.0, 'Prayer Plant', AppImages.plant01, '\$29', 'Dec 15, 2024 | 10:00 AM', false),
              const SizedBox(height: 24.0,),
            ],
          )), 24.0, 24.0, 24.0, 0.0)
        ],
      ),
    );
  }
}
