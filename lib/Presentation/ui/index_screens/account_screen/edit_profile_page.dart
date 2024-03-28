import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
                        TextStyles.heading4('Edit Profile', AppColors.grey900),
                      ],
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 56.0,
            width: context.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              color: AppColors.grey50
            ),
            child: AppPadding.paddingOnlyWidget(TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Andrew Ainsley',
                hintStyle: TextStyle(
                  fontFamily: 'urbanistSemiBold',
                  color: AppColors.grey900
                )

              ),
            ), 24.0, 24.0, 0.0, 0.0),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 56.0,
            width: context.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                color: AppColors.grey50
            ),
            child: AppPadding.paddingOnlyWidget(TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Andrew',
                  hintStyle: TextStyle(
                      fontFamily: 'urbanistSemiBold',
                      color: AppColors.grey900
                  )

              ),
            ), 24.0, 24.0, 0.0, 0.0),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 56.0,
            width: context.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                color: AppColors.grey50
            ),
            child: AppPadding.paddingOnlyWidget(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextStyles.bodyM('12/27/1995', AppColors.grey900, 'semiBold', TextAlign.start), 
                SvgPicture.asset(AppIcons.calendar)
              ],
            ), 24.0, 24.0, 0.0, 0.0),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 56.0,
            width: context.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                color: AppColors.grey50
            ),
            child: AppPadding.paddingOnlyWidget(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextStyles.bodyM('andrew_ainsley@yourdomain.com', AppColors.grey900, 'semiBold', TextAlign.start),
                SvgPicture.asset(AppIcons.message)
              ],
            ), 24.0, 24.0, 0.0, 0.0),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 56.0,
            width: context.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                color: AppColors.grey50
            ),
            child: AppPadding.paddingOnlyWidget(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextStyles.bodyM('United States', AppColors.grey900, 'semiBold', TextAlign.start),
                SvgPicture.asset(AppIcons.arrowDown2)
              ],
            ), 24.0, 24.0, 0.0, 0.0),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 56.0,
            width: context.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                color: AppColors.grey50
            ),
            child: AppPadding.paddingOnlyWidget(Row(
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.usVector),
                    SizedBox(width: 5.0,),
                    SvgPicture.asset(AppIcons.arrowDown2)
                  ],
                ),
                SizedBox(width: 8.0,),
                TextStyles.bodyM('+1 111 467 378 399', AppColors.grey900, 'semiBold', TextAlign.start),
              ],
            ), 24.0, 24.0, 0.0, 0.0),
          ), 24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(Container(
            height: 56.0,
            width: context.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                color: AppColors.grey50
            ),
            child: AppPadding.paddingOnlyWidget(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextStyles.bodyM('Male', AppColors.grey900, 'semiBold', TextAlign.start),
                SvgPicture.asset(AppIcons.arrowDown2)
              ],
            ), 24.0, 24.0, 0.0, 0.0),
          ), 24.0, 24.0, 24.0, 0.0),
          const SizedBox(height: 50.0,),
          AppPadding.paddingOnlyWidget(AppButtons.buttonWithoutIcon('Update', context.width, 58.0, AppColors.white, 100.0, AppColors.primary500Color), 24.0, 24.0, 24.0, 0.0)
        ],
      ),
    );
  }
}
