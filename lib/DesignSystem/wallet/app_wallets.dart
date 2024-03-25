import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors/app_colors.dart';
import '../icons/app_icons.dart';
import '../typography/text_style.dart';

class AppWallets{
  AppWallets._();

  static transactionItem(double width, double height, String title, String image , String price , String date, bool statusOfTransaction) {
    return SizedBox(
      height: height,
      width: width,
      child: Row(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              color: AppColors.greenTran
            ),
            child: Center(
              child: Image.asset(image, width: 44.0, height: 44.0,),
            ),
          ),
          const SizedBox(width: 20.0,),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  TextStyles.heading6(title, AppColors.grey900)
                ],
              ),
              Row(
                children: [
                  TextStyles.bodyM(date, AppColors.grey700, 'medium', TextAlign.start)
                ],
              )
            ],
          )),
          SizedBox(
            width: 68.0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextStyles.heading6(price, AppColors.primary500Color)
                  ],
                ),
                const SizedBox(height: 8.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        TextStyles.bodyM((statusOfTransaction == true)? 'Top Up': 'Orders', AppColors.grey700, 'medium', TextAlign.end),
                        const SizedBox(width: 4.0,),
                        SvgPicture.asset((statusOfTransaction == true)?AppIcons.arrowDownSquareBoldIcon:AppIcons.arrowUpSquareBoldIcon, )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }

}