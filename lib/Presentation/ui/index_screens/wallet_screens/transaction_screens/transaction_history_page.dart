import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/wallet_screens/transaction_screens/transaction_history_single_page.dart';

import '../../../../../DesignSystem/colors/app_colors.dart';
import '../../../../../DesignSystem/icons/app_icons.dart';
import '../../../../../DesignSystem/images/app_images.dart';
import '../../../../../DesignSystem/padding/app_padding.dart';
import '../../../../../DesignSystem/typography/text_style.dart';
import '../../../../../DesignSystem/wallet/app_wallets.dart';

class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({super.key});

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
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
                        TextStyles.heading4('Transaction History', AppColors.grey900),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(AppIcons.search),
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
          AppPadding.paddingOnlyWidget(Expanded(child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TransactionHistorySinglePage()));
                },
                child: AppWallets.transactionItem(context.width, 60.0, 'Prayer Plant', AppImages.plant01, '\$29', 'Dec 15, 2024 | 10:00 AM', false),
              ),
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
