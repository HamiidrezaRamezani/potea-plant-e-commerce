import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/cart/app_cart.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/shadow/app_shadow.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
                        TextStyles.heading4('Checkout', AppColors.grey900),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(AppIcons.moreCircle),
                    )
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  TextStyles.heading5('Shipping Address', AppColors.grey900)
                ],
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Container(
                height: 92.0,
                width: context.width,
                decoration: BoxDecoration(
                    boxShadow: AppShadow.shadow2,
                    color: AppColors.white,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(24.0))),
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
                              TextStyles.heading6('Home', AppColors.grey900)
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
                    SvgPicture.asset(AppIcons.editBold),
                    const SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          const SizedBox(
            height: 24,
          ),
          AppPadding.paddingOnlyWidget(
              Container(
                height: 1.0,
                width: context.width,
                color: AppColors.grey200,
              ),
              24.0,
              24.0,
              0.0,
              0.0),
          const SizedBox(
            height: 24,
          ),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  TextStyles.heading5('Order List', AppColors.grey900)
                ],
              ),
              24.0,
              24.0,
              0.0,
              0.0),
          const SizedBox(
            height: 24,
          ),
          AppPadding.paddingOnlyWidget(
              AppCart.myCart(
                  AppColors.white,
                  160.0,
                  context.width,
                  AppImages.plant11,
                  'Prayer Plant',
                  '\$29',
                  1,
                  false,
                  () {},
                  false),
              24.0,
              24.0,
              0.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppCart.myCart(
                  AppColors.white,
                  160.0,
                  context.width,
                  AppImages.plant15,
                  'ZZ Plant',
                  '\$50',
                  5,
                  false,
                  () {},
                  false),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppCart.myCart(
                  AppColors.white,
                  160.0,
                  context.width,
                  AppImages.plant17,
                  'Airtight Cactus',
                  '\$72',
                  2,
                  false,
                  () {},
                  false),
              24.0,
              24.0,
              24.0,
              0.0),
          const SizedBox(
            height: 24,
          ),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  TextStyles.heading5('Choose Shipping', AppColors.grey900)
                ],
              ),
              24.0,
              24.0,
              0.0,
              0.0),
          const SizedBox(
            height: 24,
          ),
          AppPadding.paddingOnlyWidget(
              Container(
                height: 68.0,
                width: context.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: AppShadow.shadow2),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    Image.asset(
                      AppImages.truckVector,
                      height: 28.0,
                      width: 28.0,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                        child: TextStyles.heading6(
                            'Choose Shipping Type', AppColors.grey900)),
                    const SizedBox(
                      width: 16.0,
                    ),
                    SvgPicture.asset(AppIcons.arrowRight2),
                    const SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              0.0,
              0.0),
          const SizedBox(
            height: 24,
          ),
          AppPadding.paddingOnlyWidget(
              Container(
                height: 1.0,
                width: context.width,
                color: AppColors.grey200,
              ),
              24.0,
              24.0,
              0.0,
              0.0),
          const SizedBox(
            height: 24,
          ),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  TextStyles.heading5('Promo Code', AppColors.grey900)
                ],
              ),
              24.0,
              24.0,
              0.0,
              0.0),
          const SizedBox(
            height: 16,
          ),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                        color: AppColors.grey50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16.0))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Promo Code',
                          hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: AppColors.grey500,
                              fontFamily: 'urbanistRegular'),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20)),
                    ),
                  )),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 48.0,
                    width: 48.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary500Color),
                    child: Center(
                      child: SvgPicture.asset(AppIcons.addIcon),
                    ),
                  )
                ],
              ),
              24.0,
              24.0,
              0.0,
              0.0),
          const SizedBox(
            height: 24,
          ),
          AppPadding.paddingOnlyWidget(
              Container(
                  width: context.width,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: AppShadow.shadow2,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(16.0))),
                  child: AppPadding.paddingOnlyWidget(
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyles.bodyM('Amount', AppColors.grey700,
                                  'medium', TextAlign.left),
                              TextStyles.bodyL('\$250', AppColors.grey800,
                                  'semiBold', TextAlign.right),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyles.bodyM('Shipping', AppColors.grey700,
                                  'medium', TextAlign.left),
                              TextStyles.bodyL('-', AppColors.grey800,
                                  'semiBold', TextAlign.right),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 1.0,
                            width: context.width,
                            color: AppColors.grey200,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyles.bodyM('Total', AppColors.grey700,
                                  'medium', TextAlign.left),
                              TextStyles.bodyL('\$250', AppColors.grey800,
                                  'semiBold', TextAlign.right),
                            ],
                          ),
                        ],
                      ),
                      24.0,
                      24.0,
                      24.0,
                      24.0)),
              24.0,
              24.0,
              0.0,
              0.0),
          const SizedBox(
            height: 130.0,
          )
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
                    AppButtons.buttonWithIcon(
                        'Continue to Payment',
                        context.width,
                        58.0,
                        AppColors.white,
                        100.0,
                        AppColors.primary500Color,
                        0.0,
                        AppColors.primary500Color,
                        AppIcons.arrowRightBold),
                    24.0,
                    24.0,
                    0.0,
                    0.0))),
      ),
    );
  }
}
