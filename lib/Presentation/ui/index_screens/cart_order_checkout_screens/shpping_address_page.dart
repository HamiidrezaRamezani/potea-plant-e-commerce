import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/shadow/app_shadow.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class ShippingAddressPage extends StatefulWidget {
  const ShippingAddressPage({super.key});

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {

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
                            'Shipping Address', AppColors.grey900),
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
                      Container(
                        height: 52.0,
                        width: 52.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenTran,
                        ),
                        child: Center(
                          child: Container(
                            height: 36.0,
                            width: 36.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color),
                            child: Center(
                              child: SvgPicture.asset(
                                AppIcons.locationBoldIcon,
                                height: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                TextStyles.heading6('Home', AppColors.grey900),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Container(
                                  height: 24.0,
                                  width: 54.0,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(6.0),
                                    ),
                                    color: AppColors.greenTran,
                                  ),
                                  child: Center(
                                    child: TextStyles.bodyXS(
                                        'Default',
                                        AppColors.primary500Color,
                                        'semiBold',
                                        TextAlign.center),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                TextStyles.bodyM('61480 Sunbrook Park, PC 5679',
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
                      Container(
                        height: 52.0,
                        width: 52.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenTran,
                        ),
                        child: Center(
                          child: Container(
                            height: 36.0,
                            width: 36.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color),
                            child: Center(
                              child: SvgPicture.asset(
                                AppIcons.locationBoldIcon,
                                height: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                    TextStyles.heading6('Office', AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('6993 Meadow Valley Terra, PC ',
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
                      Container(
                        height: 52.0,
                        width: 52.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenTran,
                        ),
                        child: Center(
                          child: Container(
                            height: 36.0,
                            width: 36.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color),
                            child: Center(
                              child: SvgPicture.asset(
                                AppIcons.locationBoldIcon,
                                height: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                    TextStyles.heading6('Apartment', AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('21833 Clyde Gallagher, PC 4662',
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
                      Container(
                        height: 52.0,
                        width: 52.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenTran,
                        ),
                        child: Center(
                          child: Container(
                            height: 36.0,
                            width: 36.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color),
                            child: Center(
                              child: SvgPicture.asset(
                                AppIcons.locationBoldIcon,
                                height: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                    TextStyles.heading6("Parent's House", AppColors.grey900),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextStyles.bodyM('5259 Blue Bill Park, PC 4627',
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
          const SizedBox(
            height: 24.0,
          ),
          AppPadding.paddingOnlyWidget(AppButtons.buttonWithoutIcon('Add New Address', context.width, 58, AppColors.primary500Color, 100.0, AppColors.primary100Color), 24.0, 24.0, 0.0, 0.0)
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
