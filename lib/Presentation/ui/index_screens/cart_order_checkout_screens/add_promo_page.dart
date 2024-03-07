import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/buttons/app_buttons.dart';
import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/images/app_images.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/shadow/app_shadow.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class AddPromoPage extends StatefulWidget {
  const AddPromoPage({super.key});

  @override
  State<AddPromoPage> createState() => _AddPromoPageState();
}

class _AddPromoPageState extends State<AddPromoPage> {

  int addressSelectedIndex = 0;

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
                        TextStyles.heading4(
                            'Add Promo', AppColors.grey900),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(AppIcons.search),
                    )
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          const SizedBox(
            height: 24.0,
          ),
          AppPadding.paddingOnlyWidget(
              InkWell(
                onTap: (){
                  setState(() {
                    addressSelectedIndex = 0;
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                child: Container(
                  height: 92.0,
                  width: context.width,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadow2,
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                    color: AppColors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20.0,
                      ),
                      Image.asset(AppImages.promoVector, height: 68.0, width: 68.0,),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                          child: SizedBox(
                            height: 48.0,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    TextStyles.heading6('Special 25% Off', AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('Special promo only today!',
                                        AppColors.grey700, 'medium', TextAlign.left)
                                  ],
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                              border: Border.all(
                                  width: 3.0,
                                  color: AppColors.primary500Color
                              )
                          ),
                          child: (addressSelectedIndex == 0)?Center(
                            child: Container(
                              height: 11.67,
                              width: 11.67,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primary500Color
                              ),
                            ),
                          ): null
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              24.0,
              24.0,
              0.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              InkWell(
                onTap: (){
                  setState(() {
                    addressSelectedIndex = 1;
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                child: Container(
                  height: 92.0,
                  width: context.width,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadow2,
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                    color: AppColors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20.0,
                      ),
                      Image.asset(AppImages.promoVector, height: 68.0, width: 68.0,),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                          child: SizedBox(
                            height: 48.0,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    TextStyles.heading6('Discount 30% Off', AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('New user special promo',
                                        AppColors.grey700, 'medium', TextAlign.left)
                                  ],
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                              border: Border.all(
                                  width: 3.0,
                                  color: AppColors.primary500Color
                              )
                          ),
                          child: (addressSelectedIndex == 1)?Center(
                            child: Container(
                              height: 11.67,
                              width: 11.67,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primary500Color
                              ),
                            ),
                          ): null
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
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
                    AppButtons.buttonWithoutIcon(
                        'Apply',
                        context.width,
                        58.0,
                        AppColors.white,
                        100.0,
                        AppColors.primary500Color),
                    24.0,
                    24.0,
                    0.0,
                    0.0))),
      ),
    );
  }
}
