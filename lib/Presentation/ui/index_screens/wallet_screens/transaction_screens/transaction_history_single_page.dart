import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/shadow/app_shadow.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../../DesignSystem/icons/app_icons.dart';
import '../../../../../DesignSystem/padding/app_padding.dart';
import '../../../../../DesignSystem/typography/text_style.dart';

class TransactionHistorySinglePage extends StatefulWidget {
  const TransactionHistorySinglePage({super.key});

  @override
  State<TransactionHistorySinglePage> createState() => _TransactionHistorySinglePageState();
}

class _TransactionHistorySinglePageState extends State<TransactionHistorySinglePage> {
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
                        TextStyles.heading4('E-Receipt', AppColors.grey900),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            _showPopupMenu();

                          },
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
          AppPadding.paddingOnlyWidget(Image.asset(AppImages.barcodeVector), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 106,
            width: context.width,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: AppShadow.shadow2,
              borderRadius: BorderRadius.circular(16.0)
            ),
            child: AppPadding.paddingOnlyWidget(Row(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.greenTran
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(AppImages.plant11),
                  ),
                ),
                const SizedBox(width: 20.0,),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        TextStyles.heading6('Prayer Plant', AppColors.grey900)
                      ],
                    ),
                    const SizedBox(height: 8.0,),
                    Row(
                      children: [
                        TextStyles.bodyM('Qty = 1', AppColors.grey700, 'medium', TextAlign.center)
                      ],
                    )
                  ],
                ))
              ],
            ), 24, 24, 0.0, 0.0)
          ), 24.0, 24.0, 20.0, 0.0), 
          AppPadding.paddingOnlyWidget(Container(
            height: 180,
            width: context.width,
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: AppShadow.shadow2,
                borderRadius: BorderRadius.circular(16.0)
            ),
            child: AppPadding.paddingOnlyWidget(Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.bodyM('Amount', AppColors.grey700, 'medium', TextAlign.center),
                    TextStyles.bodyL('\$29', AppColors.grey800, 'semiBold', TextAlign.center),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.bodyM('Promo', AppColors.primary500Color, 'medium', TextAlign.center),
                    TextStyles.bodyL('- \$8', AppColors.primary500Color, 'semiBold', TextAlign.center),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Divider(
                   height: 1.0,
                  color: AppColors.grey200,
                ),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.bodyM('Total', AppColors.grey700, 'medium', TextAlign.center),
                    TextStyles.bodyL('\$21', AppColors.grey800, 'semiBold', TextAlign.center),
                  ],
                ),
              ],
            ), 24.0, 24.0, 24.0, 24.0),
          ), 24.0, 24.0, 20.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            width: context.width,
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: AppShadow.shadow2,
                borderRadius: BorderRadius.circular(16.0)
            ),
            child: AppPadding.paddingOnlyWidget(Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.bodyM('Payment Methods', AppColors.grey700, 'medium', TextAlign.center),
                    TextStyles.bodyL('My E-Wallet', AppColors.grey800, 'semiBold', TextAlign.center),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.bodyM('Date', AppColors.grey700, 'medium', TextAlign.center),
                    TextStyles.bodyL('Dec 15, 2024 | 10:00:27 AM', AppColors.grey800, 'semiBold', TextAlign.center),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.bodyM('Transaction ID', AppColors.grey700, 'medium', TextAlign.center),
                    Row(
                      children: [
                        TextStyles.bodyL('SK7263727399', AppColors.grey800, 'semiBold', TextAlign.center),
                        const SizedBox(width: 5.0,),
                        SvgPicture.asset(AppIcons.copyIcon)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.bodyM('Status', AppColors.grey700, 'medium', TextAlign.center),
                    Container(
                      height: 24.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: AppColors.primary500Color
                      ),
                      child: Center(
                        child: TextStyles.bodyXS('Paid', AppColors.white, 'semiBold', TextAlign.center),
                      ),
                    )
                  ],
                ),
              ],
            ), 24.0, 24.0, 24.0, 24.0),
          ), 24.0, 24.0, 20.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            width: context.width,
            height: 70.0,
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: AppShadow.shadow2,
                borderRadius: BorderRadius.circular(16.0)
            ),
            child: AppPadding.paddingOnlyWidget(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextStyles.bodyM('Category', AppColors.grey700, 'medium', TextAlign.center),
                Row(
                  children: [
                    TextStyles.bodyL('Orders', AppColors.grey800, 'semiBold', TextAlign.center),
                    const SizedBox(width: 5.0,),
                    SvgPicture.asset(AppIcons.arrowDown2)
                  ],
                )
              ],
            ), 24.0, 24.0, 0.0, 0.0),
          ), 24.0, 24.0, 20.0, 0.0)
        ],
      ),
    );
  }

  void _showPopupMenu() async {
    await showMenu(
      context: context,
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0)
      ),
      position: const RelativeRect.fromLTRB(200, 80, 40, 100),
      items: [
        PopupMenuItem<String>(
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.send),
                const SizedBox(width: 8.0,),
                TextStyles.bodyM('Share E-Receipt', AppColors.grey900, 'semiBold', TextAlign.center),
              ],
            ), ),
        PopupMenuItem<String>(
            child:  Row(
              children: [
                SvgPicture.asset(AppIcons.paperDownload),
                const SizedBox(width: 8.0,),
                TextStyles.bodyM('Download E-Receipt', AppColors.grey900, 'semiBold', TextAlign.center),
              ],
            )),
        PopupMenuItem<String>(
            child:  Row(
              children: [
                SvgPicture.asset(AppIcons.document),
                const SizedBox(width: 8.0,),
                TextStyles.bodyM('Print', AppColors.grey900, 'semiBold', TextAlign.center),
              ],
            )),
      ],
      elevation: 8.0,
    );
  }


}
