import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/notification_screen/notification_page.dart';

import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/images/app_images.dart';
import '../../../../DesignSystem/product/app_product.dart';
import '../../../../DesignSystem/typography/text_style.dart';
import '../../../core/ui_models/product_model_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTagIndex = 0;

  List<ProductModelUi> specialProductList = [
    ProductModelUi(
        image: AppImages.plant02,
        title: 'Prayer Plant',
        price: '29',
        rate: '4.8',
        status: '4,268 Sold',
        slug: 'special',
        isPopular: false),
    ProductModelUi(
        image: AppImages.plant08,
        title: 'ZZ Plant',
        price: '25',
        rate: '4.7',
        status: '3,884 Sold',
        slug: 'special',
        isPopular: false),
    ProductModelUi(
        image: AppImages.plant11,
        title: 'Elon Plant',
        price: '50',
        rate: '4.9',
        status: '5,874 Sold',
        slug: 'special',
        isPopular: false),
  ];

  List<ProductModelUi> popularProductList = [
    ProductModelUi(
        image: AppImages.plant02,
        title: 'Prayer Plant',
        price: '29',
        rate: '4.8',
        status: '4,268 Sold',
        slug: 'special',
        isPopular: false),
    ProductModelUi(
        image: AppImages.plant08,
        title: 'ZZ Plant',
        price: '25',
        rate: '4.7',
        status: '3,884 Sold',
        slug: 'special',
        isPopular: false),
    ProductModelUi(
        image: AppImages.plant11,
        title: 'Elon Plant',
        price: '50',
        rate: '4.9',
        status: '5,874 Sold',
        slug: 'special',
        isPopular: false),
    ProductModelUi(
        image: AppImages.plant25,
        title: 'Plant Two',
        price: '50',
        rate: '4.9',
        status: '5,874 Sold',
        slug: 'special',
        isPopular: false),
    ProductModelUi(
        image: AppImages.plant35,
        title: 'Plant 15',
        price: '50',
        rate: '4.9',
        status: '5,874 Sold',
        slug: 'special',
        isPopular: false),
    ProductModelUi(
        image: AppImages.plant15,
        title: 'Plant eleven',
        price: '50',
        rate: '4.9',
        status: '5,874 Sold',
        slug: 'special',
        isPopular: false),
  ];

  List<String> tags = [
    'All',
    'Monstra',
    'Aloe',
    'Palm',
    'Yucca',
  ];

  @override
  Widget build(BuildContext context) {
    final double itemHeight = (context.height - kToolbarHeight - 24) / 1.7;
    final double itemWidth = context.width / 1.8;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          AppPadding.paddingOnlyWidget(
              SizedBox(
                height: 56.0,
                width: context.width,
                child: Row(
                  children: [
                    Container(
                      height: 56.0,
                      width: 56.0,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(AppImages.avatar),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            TextStyles.bodyL('Good Morning 👋',
                                AppColors.grey600, 'medium', TextAlign.left)
                          ],
                        ),
                        Row(
                          children: [
                            TextStyles.heading5(
                              'Andrew Ainsley',
                              AppColors.grey900,
                            )
                          ],
                        ),
                      ],
                    )),
                    const SizedBox(
                      width: 16.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationPage()));
                      },
                      child: SvgPicture.asset(AppIcons.notification),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    SvgPicture.asset(AppIcons.heart),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Container(
                height: 56.0,
                width: context.width,
                decoration: BoxDecoration(
                    color: AppColors.grey100,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(16.0))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset(
                      AppIcons.search,
                      color: AppColors.grey400,
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    const Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search', border: InputBorder.none),
                    )),
                    const SizedBox(
                      width: 12.0,
                    ),
                    SvgPicture.asset(
                      AppIcons.filter,
                      color: AppColors.primary500Color,
                    ),
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
          // Special Offers
          AppPadding.paddingOnlyWidget(
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyles.heading5('Special Offers', AppColors.grey900),
                      TextStyles.bodyL('See All', AppColors.primary500Color,
                          'bold', TextAlign.center),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    height: 380,
                    width: context.width,
                    child: ListView.builder(
                        itemCount: specialProductList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return AppPadding.paddingOnlyWidget(
                              SizedBox(
                                width: 240.0,
                                child: AppProduct.specialProduct(
                                    specialProductList[index].image,
                                    specialProductList[index].title,
                                    specialProductList[index].rate,
                                    specialProductList[index].status,
                                    specialProductList[index].price,
                                    specialProductList[index].isPopular,
                                    (){
                                      WidgetsBinding.instance.addPostFrameCallback((_){
                                        setState(() {
                                          specialProductList[index].isPopular = !specialProductList[index].isPopular;
                                        });
                                      });
                                    }
                                ),
                              ),
                              16.0,
                              0.0,
                              0.0,
                              0.0);
                        }),
                  ),
                ],
              ),
              24.0,
              24.0,
              24.0,
              0.0),

          // Most Popular
          AppPadding.paddingOnlyWidget(
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyles.heading5('Most Popular', AppColors.grey900),
                      TextStyles.bodyL('See All', AppColors.primary500Color,
                          'bold', TextAlign.center),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  AppPadding.paddingOnlyWidget(
                      SizedBox(
                        height: 40.0,
                        width: context.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: tags.length,
                            itemBuilder: (BuildContext context, int index) {
                              return AppPadding.paddingOnlyWidget(
                                  InkWell(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25.0)),
                                    onTap: () {
                                      setState(() {
                                        selectedTagIndex = index;
                                      });
                                    },
                                    child: Container(
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                          color: (selectedTagIndex == index)
                                              ? AppColors.primary500Color
                                              : AppColors.white,
                                          border: Border.all(
                                            width: 2.0,
                                            color: AppColors.primary500Color,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(25.0))),
                                      child: Center(
                                          child: AppPadding.paddingOnlyWidget(
                                              TextStyles.bodyL(
                                                  tags[index],
                                                  (selectedTagIndex == index)
                                                      ? AppColors.white
                                                      : AppColors
                                                          .primary500Color,
                                                  'semiBold',
                                                  TextAlign.center),
                                              20.0,
                                              20.0,
                                              0.0,
                                              0.0)),
                                    ),
                                  ),
                                  0.0,
                                  12.0,
                                  0.0,
                                  0.0);
                            }),
                      ),
                      0.0,
                      0.0,
                      0.0,
                      0.0),
                  const SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    width: context.width,
                    child: GridView.builder(
                        itemCount: popularProductList.length,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.0,
                          childAspectRatio: (itemWidth / itemHeight),
                        ),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return AppPadding.paddingOnlyWidget(
                              SizedBox(
                                width: 240.0,
                                child: AppProduct.popularProduct(
                                    popularProductList[index].image,
                                    popularProductList[index].title,
                                    popularProductList[index].rate,
                                    popularProductList[index].status,
                                    popularProductList[index].price,
                                    popularProductList[index].isPopular,
                                        (){
                                      WidgetsBinding.instance.addPostFrameCallback((_){
                                        setState(() {
                                          popularProductList[index].isPopular = !popularProductList[index].isPopular;
                                        });
                                      });
                                    }),
                              ),
                              0.0,
                              0.0,
                              0.0,
                              0.0);
                        }),
                  ),
                ],
              ),
              24.0,
              24.0,
              24.0,
              0.0),
        ],
      ),
    );
  }
}
