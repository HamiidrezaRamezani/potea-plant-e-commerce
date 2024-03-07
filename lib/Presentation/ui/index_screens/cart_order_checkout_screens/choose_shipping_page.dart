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

class ChooseShippingPage extends StatefulWidget {
  const ChooseShippingPage({super.key});

  @override
  State<ChooseShippingPage> createState() => _ChooseShippingPageState();
}

class _ChooseShippingPageState extends State<ChooseShippingPage> {

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
                            'Choose Shipping', AppColors.grey900),
                      ],
                    ),
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
                      Image.asset(AppImages.economyVector, height: 52.0, width: 52.0,),
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
                                    TextStyles.heading6('Economy', AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('Estimated Arrival, Dec 20-23',
                                        AppColors.grey700, 'medium', TextAlign.left)
                                  ],
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 8.0,
                      ),
                      TextStyles.heading5('\$10', AppColors.primary500Color),
                      const SizedBox(
                        width: 8.0,
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
                      Image.asset(AppImages.regularVector, height: 52.0, width: 52.0,),
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
                                    TextStyles.heading6('Regular', AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('Estimated Arrival, Dec 20-22',
                                        AppColors.grey700, 'medium', TextAlign.left)
                                  ],
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 8.0,
                      ),
                      TextStyles.heading5('\$15', AppColors.primary500Color),
                      const SizedBox(
                        width: 8.0,
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
          AppPadding.paddingOnlyWidget(
              InkWell(
                onTap: (){
                  setState(() {
                    addressSelectedIndex = 2;
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
                      Image.asset(AppImages.cargoVector, height: 52.0, width: 52.0,),
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
                                    TextStyles.heading6('Cargo', AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('Estimated Arrival, Dec 19-20',
                                        AppColors.grey700, 'medium', TextAlign.left)
                                  ],
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 8.0,
                      ),
                      TextStyles.heading5('\$20', AppColors.primary500Color),
                      const SizedBox(
                        width: 8.0,
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
                          child: (addressSelectedIndex == 2)?Center(
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
          AppPadding.paddingOnlyWidget(
              InkWell(
                onTap: (){
                  setState(() {
                    addressSelectedIndex = 3;
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
                      Image.asset(AppImages.expressVector, height: 52.0, width: 52.0,),
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
                                    TextStyles.heading6('Express', AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('Estimated Arrival, Dec 18-19',
                                        AppColors.grey700, 'medium', TextAlign.left)
                                  ],
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 8.0,
                      ),
                      TextStyles.heading5('\$30', AppColors.primary500Color),
                      const SizedBox(
                        width: 8.0,
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
                          child: (addressSelectedIndex == 3)?Center(
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
