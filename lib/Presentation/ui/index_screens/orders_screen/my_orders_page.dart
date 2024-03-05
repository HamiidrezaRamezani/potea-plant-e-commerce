import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/orders/app_orders.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Active'),
    const Tab(text: 'Complete'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          children: [
            const SizedBox(height: 24.0,),
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
                          TextStyles.heading4('My Orders', AppColors.grey900),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(AppIcons.search),
                          ),
                          const SizedBox(width: 20.0,),
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

            TabBar(
              tabs: myTabs,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.primary500Color,
              labelColor: AppColors.primary500Color,
              labelStyle: const TextStyle(
                fontFamily: 'urbanistSemiBold',
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
              unselectedLabelColor: AppColors.grey500,
              unselectedLabelStyle: const TextStyle(
                  fontFamily: 'urbanistSemiBold',
                  fontSize: 18.0
              ),
            ),
            const SizedBox(height: 4.0,),
            Expanded(child: TabBarView(
              children: [
                MediaQuery.removePadding(context: context, removeTop: true, child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context , int index){
                  return AppPadding.paddingOnlyWidget(AppOrders.myCart(AppColors.white, 160.0, context.width, AppImages.plant11, 'Prayer Plant', '\$29', index), 24, 24, 20, 0.0);
                }),),
                Container(
                  color: Colors.yellow,
                )
              ]
            ),)
          ],
        ),
      ),
    );
  }
}
