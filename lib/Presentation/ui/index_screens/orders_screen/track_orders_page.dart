import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/orders/app_orders.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class TrackOrdersPage extends StatefulWidget {
  const TrackOrdersPage({super.key});

  @override
  State<TrackOrdersPage> createState() => _TrackOrdersPageState();
}

class _TrackOrdersPageState extends State<TrackOrdersPage> {
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
                        TextStyles.heading4('Track Order', AppColors.grey900),
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
          AppPadding.paddingOnlyWidget(AppOrders.myOrders(AppColors.white, 160, context.width, AppImages.plant01, 'Prayer Plant', '\$29', 1, '', '', () { }), 24.0, 24.0, 24.0, 0.0),
          const SizedBox(height: 24.0,),
          AppPadding.paddingOnlyWidget(Row(
            children: [
              SizedBox(
                height: 64.0,
                width: 36.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.packVector),
                    SvgPicture.asset(AppIcons.checkBoldIcon)
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 64.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppPadding.paddingOnlyWidget(Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 5.0,
                            height: 1.0,
                            color: AppColors.primary500Color,
                          ),
                          Container(
                            width: 5.0,
                            height: 1.0,
                            color: AppColors.primary500Color,
                          ),
                          Container(
                            width: 5.0,
                            height: 1.0,
                            color: AppColors.primary500Color,
                          ),
                          Container(
                            width: 5.0,
                            height: 1.0,
                            color: AppColors.primary500Color,
                          ),
                          Container(
                            width: 5.0,
                            height: 1.0,
                            color: AppColors.primary500Color,
                          )
                        ],
                      ), 5.0, 5.0, 0.0, 0.0),
                      const SizedBox(height: 5.0,)
                    ],
                  )
                )
              ),
              SizedBox(
                height: 64.0,
                width: 36.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.truckVector),
                    SvgPicture.asset(AppIcons.checkBoldIcon)
                  ],
                ),
              ),
              Expanded(
                  child: SizedBox(
                      height: 64.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppPadding.paddingOnlyWidget(Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              ),
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              ),
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              ),
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              ),
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              )
                            ],
                          ), 5.0, 5.0, 0.0, 0.0),
                          const SizedBox(height: 5.0,)
                        ],
                      )
                  )
              ),
              SizedBox(
                height: 64.0,
                width: 36.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.deliveryVector),
                    SvgPicture.asset(AppIcons.checkBoldIcon, color: AppColors.grey500,)
                  ],
                ),
              ),
              Expanded(
                  child: SizedBox(
                      height: 64.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppPadding.paddingOnlyWidget(Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              ),
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              ),
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              ),
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              ),
                              Container(
                                width: 5.0,
                                height: 1.0,
                                color: AppColors.grey500,
                              )
                            ],
                          ), 5.0, 5.0, 0.0, 0.0),
                          const SizedBox(height: 5.0,)
                        ],
                      )
                  )
              ),
              SizedBox(
                height: 64.0,
                width: 36.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.boxVector),
                    SvgPicture.asset(AppIcons.checkBoldIcon, color: AppColors.grey500,)
                  ],
                ),
              ),
            ],
          ), 48.0, 48.0, 0.0, 0.0),
          const SizedBox(height: 24.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextStyles.heading6('Packet In Delivery', AppColors.grey900)
            ],
          ),
          const SizedBox(height: 24.0,),
          AppPadding.paddingOnlyWidget(Container(
            height: 1.0,
            width: context.width,
            color: AppColors.grey200,
          ), 24.0, 24.0, 0.0, 0.0),
          const SizedBox(height: 24.0,),
          AppPadding.paddingOnlyWidget(Row(
            children: [
              TextStyles.heading6('Order Status Details', AppColors.grey900)
            ],
          ), 24.0, 24.0, 0.0, 0.0),
          const SizedBox(height: 24.0,),
          AppPadding.paddingOnlyWidget(Row(
            children: [
              SizedBox(
                width: 36.0,
                child: Column(
                  children: [
                    const SizedBox(height: 8.0,),
                    Container(
                      height: 33.0,
                      width: 33.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary500Color,
                      ),
                      child: Center(
                        child: Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white,
                          ),
                          child: Center(
                            child: Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Column(
                      children: [
                        Container(
                          height: 8.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                            color: AppColors.grey400
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Container(
                          height: 12.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Container(
                          height: 8.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      height: 33.0,
                      width: 33.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary500Color,
                      ),
                      child: Center(
                        child: Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white,
                          ),
                          child: Center(
                            child: Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Column(
                      children: [
                        Container(
                          height: 8.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Container(
                          height: 12.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Container(
                          height: 8.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      height: 33.0,
                      width: 33.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary500Color,
                      ),
                      child: Center(
                        child: Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white,
                          ),
                          child: Center(
                            child: Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Column(
                      children: [
                        Container(
                          height: 8.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Container(
                          height: 12.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Container(
                          height: 8.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      height: 33.0,
                      width: 33.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary500Color,
                      ),
                      child: Center(
                        child: Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white,
                          ),
                          child: Center(
                            child: Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Column(
                      children: [
                        Container(
                          height: 8.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Container(
                          height: 12.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Container(
                          height: 8.0,
                          width: 2.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                              color: AppColors.grey400
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      height: 33.0,
                      width: 33.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary500Color,
                      ),
                      child: Center(
                        child: Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white,
                          ),
                          child: Center(
                            child: Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary500Color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                  ],
                ),
              ),
              SizedBox(
                  width: context.width - 95,
                  height: context.height * 0.45,
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48.0,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextStyles.heading6('Order In Transit - Dec 17', AppColors.grey900),
                            TextStyles.bodyS('15:20 PM', AppColors.grey700, 'medium', TextAlign.right)
                          ],
                        ),
                        Row(
                          children: [
                            TextStyles.bodyM('32 Manchester Ave. Ringgold, GA 30736', AppColors.grey700, 'medium', TextAlign.left)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 48.0,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextStyles.heading6('Order ... Customs Port - Dec 16', AppColors.grey900),
                            TextStyles.bodyS('14:40 PM', AppColors.grey700, 'medium', TextAlign.right)
                          ],
                        ),
                        Row(
                          children: [
                            TextStyles.bodyM('4 Evergreen Street Lake Zurich, IL 60047', AppColors.grey700, 'medium', TextAlign.left)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 48.0,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextStyles.heading6('Order ... Customs Port - Dec 16', AppColors.grey900),
                            TextStyles.bodyS('14:40 PM', AppColors.grey700, 'medium', TextAlign.right)
                          ],
                        ),
                        Row(
                          children: [
                            TextStyles.bodyM('4 Evergreen Street Lake Zurich, IL 60047', AppColors.grey700, 'medium', TextAlign.left)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 48.0,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextStyles.heading6('Order ... Customs Port - Dec 16', AppColors.grey900),
                            TextStyles.bodyS('14:40 PM', AppColors.grey700, 'medium', TextAlign.right)
                          ],
                        ),
                        Row(
                          children: [
                            TextStyles.bodyM('4 Evergreen Street Lake Zurich, IL 60047', AppColors.grey700, 'medium', TextAlign.left)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 48.0,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextStyles.heading6('Order ... Customs Port - Dec 16', AppColors.grey900),
                            TextStyles.bodyS('14:40 PM', AppColors.grey700, 'medium', TextAlign.right)
                          ],
                        ),
                        Row(
                          children: [
                            TextStyles.bodyM('4 Evergreen Street Lake Zurich, IL 60047', AppColors.grey700, 'medium', TextAlign.left)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ), 24.0, 24.0, 0.0, 0.0)
        ],
      ),
    );
  }
}
