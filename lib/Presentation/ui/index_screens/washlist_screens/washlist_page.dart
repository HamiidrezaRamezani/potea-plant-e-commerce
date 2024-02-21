import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/images/app_images.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/product/app_product.dart';
import '../../../../DesignSystem/typography/text_style.dart';
import '../../../core/ui_models/product_model_ui.dart';

class WashListPage extends StatefulWidget {
  const WashListPage({super.key});

  @override
  State<WashListPage> createState() => _WashListPageState();
}

class _WashListPageState extends State<WashListPage> {

  int selectedTagIndex = 0;
  List<String> tags = [
    'All',
    'Monstra',
    'Aloe',
    'Palm',
    'Yucca',
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



  @override
  Widget build(BuildContext context) {
    final double itemHeight = (context.height - kToolbarHeight - 24) / 1.7;
    final double itemWidth = context.width / 1.8;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          ListTile(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(AppIcons.arrowLeft)),
            title: TextStyles.heading4('My WashList', AppColors.grey900),
            trailing: SvgPicture.asset(AppIcons.search, color: AppColors.grey900,),
          ),
          const SizedBox(
            height: 33.0,
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
          AppPadding.paddingOnlyWidget(SizedBox(
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
                            true,
                                (){}),
                      ),
                      0.0,
                      0.0,
                      0.0,
                      0.0);
                }),
          ), 24.0, 24.0, 24.0, 0.0)
        ],
      ),
    );
  }
}
