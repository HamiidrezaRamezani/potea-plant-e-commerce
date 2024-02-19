import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/reset_password_screens/create_new_password_page.dart';

import '../../../DesignSystem/buttons/app_buttons.dart';
import '../../../DesignSystem/colors/app_colors.dart';
import '../../../DesignSystem/padding/app_padding.dart';
import '../../../DesignSystem/typography/text_style.dart';

class ForgotPasswordVerifyPage extends StatefulWidget {
  const ForgotPasswordVerifyPage({super.key});

  @override
  State<ForgotPasswordVerifyPage> createState() => _ForgotPasswordVerifyPageState();
}

class _ForgotPasswordVerifyPageState extends State<ForgotPasswordVerifyPage> {

  TextEditingController pinController = TextEditingController();

  int timerCount = 60;
  bool isTimerFinished = false;

  countDownTimer() async {
    for (int x = 60; x > 0; x--) {
      await Future.delayed(Duration(seconds: 1)).then((_) {
        if (timerCount == 1) isTimerFinished = true;
        setState(() {
          timerCount -= 1;
        });
      });
    }
  }
  @override
  void initState() {
    countDownTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: TextStyles.heading4('Forgot Password', AppColors.grey900),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextStyles.bodyX('Code has been send to +1 111 *****99',AppColors.grey900, 'medium', TextAlign.center)
            ],
          ),
          AppPadding.paddingOnlyWidget(Container(
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
          ), 24.0, 24.0, 60.0, 0.0), 
          AppPadding.paddingOnlyWidget(Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Resend code in ',
                        style: TextStyle(
                            fontFamily: 'urbanistMedium',
                            fontSize: 18.0,
                            color: AppColors.grey900
                        )

                    ),
                    TextSpan(
                        text: '$timerCount',
                      style: TextStyle(
                        fontFamily: 'urbanistMedium',
                        fontSize: 18.0,
                        color: AppColors.primary500Color
                      )
                    ),
                    TextSpan(
                      text: 's',
                        style: TextStyle(
                            fontFamily: 'urbanistMedium',
                            fontSize: 18.0,
                            color: AppColors.grey900
                        )
                    )
                  ]
                )
              )

            ],
          ), 24.0, 24.0, 60.0, 0.0)
        ],
      ),
      bottomSheet:Container(
        color: AppColors.white,
        child:  AppPadding.paddingOnlyWidget(
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const CreateNewPasswordPage()));
              },
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              child: AppButtons.buttonWithoutIcon(
                  'Verify',
                  context.width,
                  58.0,
                  AppColors.white,
                  100,
                  AppColors.primary500Color),
            ),
            24.0,
            24.0,
            0.0,
            33.0),
      )
    );
  }
}
