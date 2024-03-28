import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/images/app_images.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  bool switchValue = false; // Variable to track the switch state

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
                        Image.asset(AppImages.logo, width: 24.0,height: 24.0,),
                        const SizedBox(width: 16.0,),
                        TextStyles.heading4('Profile',
                            AppColors.grey900)
                      ],
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: SvgPicture.asset(AppIcons.moreCircle),
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              SizedBox(
                height: 190,
                child: Column(
                  children: [
                    SizedBox(
                      height: 120.0,
                      width: 120.0,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 120.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white
                              ),
                              child: ClipRRect(
                                child: Image.asset(AppImages.avatar),
                              ),
                            ),
                          ),
                          Align(alignment: Alignment.bottomRight, child: Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                              color: AppColors.primary500Color

                            ),
                            child: Center(
                              child: SvgPicture.asset(AppIcons.edit, color: AppColors.white,),
                            ),
                          ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 12.0,),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextStyles.heading4('Andrew Ainsley', AppColors.grey900),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextStyles.bodyM('+1 111 467 378 399', AppColors.grey900, 'semiBold', TextAlign.center),
                        ],
                      ),
                    ],))
                  ],
                ),
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Container(
                height: 1.0,
                color: AppColors.grey200,
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditProfilePage()));
                },
                child: Row(
                children: [
                  SvgPicture.asset(AppIcons.profile, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Edit Profile', AppColors.grey900, 'semiBold', TextAlign.left),),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
                ),
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.location, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Address', AppColors.grey900, 'semiBold', TextAlign.left),),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.notification, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Notification', AppColors.grey900, 'semiBold', TextAlign.left),),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.wallet, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Payment', AppColors.grey900, 'semiBold', TextAlign.left),),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.shieldDone, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Security', AppColors.grey900, 'semiBold', TextAlign.left),),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.moreSquare, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Language', AppColors.grey900, 'semiBold', TextAlign.left),),
                  TextStyles.bodyX('English (US)', AppColors.grey900, 'semiBold', TextAlign.left),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.show, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Dark Mode', AppColors.grey900, 'semiBold', TextAlign.left),),
                  CupertinoSwitch(
                    value: switchValue,      // Boolean value indicating the current state of the switch
                    onChanged: (bool value) {
                      // Callback function called when the switch is toggled
                      setState(() {
                        switchValue = value;  // Update the state based on the new value
                      });
                    },
                    activeColor: CupertinoColors.activeGreen, // Color when the switch is ON
                  )
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.lock, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Privacy Policy', AppColors.grey900, 'semiBold', TextAlign.left),),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.infoSquare, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Help Center', AppColors.grey900, 'semiBold', TextAlign.left),),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.threeUser, color: AppColors.grey900,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Invite Friends', AppColors.grey900, 'semiBold', TextAlign.left),),
                  SvgPicture.asset(AppIcons.arrowRight2),
                ],
              ),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                children: [
                  SvgPicture.asset(AppIcons.logout, color: AppColors.error,),
                  const SizedBox(width: 16.0,),
                  Expanded(child: TextStyles.bodyX('Logout', AppColors.error, 'semiBold', TextAlign.left),),
                ],
              ),
              24.0,
              24.0,
              20.0,
              20.0),
        ],
      ),
    );
  }
}
