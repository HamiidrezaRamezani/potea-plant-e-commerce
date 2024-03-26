import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../../DesignSystem/colors/app_colors.dart';
import '../../../../../DesignSystem/icons/app_icons.dart';
import '../../../../../DesignSystem/padding/app_padding.dart';
import '../../../../../DesignSystem/typography/text_style.dart';

class EnterYourPinPage extends StatefulWidget {
  const EnterYourPinPage({super.key});

  @override
  State<EnterYourPinPage> createState() => _EnterYourPinPageState();
}

class _EnterYourPinPageState extends State<EnterYourPinPage> {

  TextEditingController pinController = TextEditingController();

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
                        TextStyles.heading4('Enter Your PIN', AppColors.grey900),
                      ],
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          const SizedBox(height: 130.0,),
          AppPadding.paddingOnlyWidget(SizedBox(
            height: 450.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextStyles.bodyX('Enter Your PIN to confirm top up', AppColors.grey900, 'regular', TextAlign.center),
                const SizedBox(height: 80.0,),
                Container(
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(16),
                      fieldHeight: 61,
                      fieldWidth: 83,
                      activeFillColor: AppColors.white,
                      inactiveFillColor: Colors.white,
                      errorBorderColor: Colors.white,
                      selectedFillColor: Colors.white,

                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: AppColors.white,
                    enableActiveFill: true,

                    // errorAnimationController: errorController,
                    controller: pinController,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        // currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    }, appContext: context,
                  ),
                ),
                const SizedBox(height: 130.0,),
                InkWell(
                  onTap: (){

                  },
                  child: AppButtons.buttonWithoutIcon('Continue', context.width, 58.0, AppColors.white, 100.0, AppColors.primary500Color),
                )
              ],
            ),
          ), 24.0, 24.0, 24.0, 24.0)
        ],
      ),
    );
  }
}
