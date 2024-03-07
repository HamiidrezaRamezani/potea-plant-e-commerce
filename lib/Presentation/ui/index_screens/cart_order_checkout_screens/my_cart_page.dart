import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/cart/app_cart.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/sheet/app_sheet.dart';
import 'package:potea_plant_e_commerce/DesignSystem/sheet/app_sheet.dart';
import 'package:potea_plant_e_commerce/DesignSystem/sheet/app_sheet.dart';
import 'package:potea_plant_e_commerce/DesignSystem/sheet/app_sheet.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/cart_order_checkout_screens/checkout_page.dart';

import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: (true)
          ? ListView(
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
                              TextStyles.heading4('My Cart', AppColors.grey900),
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
                AppPadding.paddingOnlyWidget(AppCart.myCart(AppColors.white, 160.0, context.width, AppImages.plant11, 'Prayer Plant', '\$12', 12, true, () {
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return AppSheet.removeFromCart(context);
                  });
                }, true), 24.0, 24.0, 24.0, 0.0),
                AppPadding.paddingOnlyWidget(AppCart.myCart(AppColors.white, 160.0, context.width, AppImages.plant11, 'Prayer Plant', '\$12', 12, true,() {
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return AppSheet.removeFromCart(context);
                  });
                }, true), 24.0, 24.0, 24.0, 0.0),
                AppPadding.paddingOnlyWidget(AppCart.myCart(AppColors.white, 160.0, context.width, AppImages.plant11, 'Prayer Plant', '\$12', 12, true,() {
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return AppSheet.removeFromCart(context);
                  });
                }, true), 24.0, 24.0, 24.0, 0.0),
                AppPadding.paddingOnlyWidget(AppCart.myCart(AppColors.white, 160.0, context.width, AppImages.plant11, 'Prayer Plant', '\$12', 12, true,() {
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return AppSheet.removeFromCart(context);
                  });
                }, true), 24.0, 24.0, 24.0, 0.0),
              ],
            )
          : ListView(
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
                              TextStyles.heading4('My Cart', AppColors.grey900),
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
                AppPadding.paddingOnlyWidget(
                    Container(
                      height: context.height * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.cartNotFoundVector,
                            height: 250,
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextStyles.heading4(
                                  'Your cart is empty', AppColors.grey900),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          TextStyles.bodyX(
                            'You don\'t have any items added to cart yet. You need to add items to cart before checkout.',
                            AppColors.grey900,
                            'regular',
                            TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    24.0,
                    24.0,
                    24.0,
                    0.0)
              ],
            ),
      bottomSheet: Container(
          height: 100.0,
          width: context.width,
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0)),
              border: Border.all(width: 1.0, color: AppColors.grey100)),
          child: Column(
            children: [
              const SizedBox(
                height: 24.0,
              ),
              AppPadding.paddingOnlyWidget(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Column(
                        children: [
                          Row(
                            children: [
                              TextStyles.bodyS('Total price', AppColors.grey600, 'semiBold', TextAlign.start)
                            ],
                          ),
                          Row(
                            children: [
                              TextStyles.heading4('\$250', AppColors.grey900)
                            ],
                          )
                        ],
                      )),
                      Directionality(
                          textDirection: TextDirection.rtl,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CheckoutPage()));
                            },
                            child: AppButtons.buttonWithIcon(
                                'Checkout',
                                context.width * 0.7,
                                58.0,
                                AppColors.white,
                                35.0,
                                AppColors.primary500Color,
                                0.0,
                                AppColors.white,
                                AppIcons.arrowRightBold),
                          ))
                    ],
                  ),
                  24.0,
                  24.0,
                  0.0,
                  0.0)
            ],
          )),
    );
  }
}
