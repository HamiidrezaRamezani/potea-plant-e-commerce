import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/reset_password_screens/forget_password_select_page.dart';

import '../../../../DesignSystem/buttons/app_buttons.dart';
import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/images/app_images.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool userNameSelected = false;
  bool passwordSelected = false;
  bool passwordObscure = false;
  bool rememberMe = false;
  final FocusNode _userNameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();


  @override
  void initState() {
    super.initState();
    _userNameFocus.addListener(_onFocusUserNameChange);
    _passwordFocus.addListener(_onFocusPasswordChange);
  }

  @override
  void dispose() {
    super.dispose();
    _userNameFocus.removeListener(_onFocusUserNameChange);
    _userNameFocus.dispose();
    _passwordFocus.removeListener(_onFocusPasswordChange);
    _passwordFocus.dispose();
  }

  void _onFocusUserNameChange() {
    if(_userNameFocus.hasFocus == true) {
      setState(() {
        userNameSelected = true;
      });
    }else {
      setState(() {
        userNameSelected = false;
      });
    }
  }

  void _onFocusPasswordChange() {
    if(_passwordFocus.hasFocus == true) {
      setState(() {
        passwordSelected = true;
      });
    }else {
      setState(() {
        passwordSelected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
          ),
          SizedBox(
            height: context.height * 0.15,
            child: Center(
              child: Image.asset(AppImages.signUpVector,
                  width: context.width * 0.4),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextStyles.heading3("Login to Your Account", AppColors.grey900)
            ],
          ),
          AppPadding.paddingOnlyWidget(
              Container(
                  height: 60.0,
                  width: context.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                      border: Border.all(color: (userNameSelected == true)?AppColors.primary500Color:AppColors.grey50, width: 1.0),
                      color: AppColors.grey50),
                  child: AppPadding.paddingOnlyWidget(Row(
                    children: [
                      SvgPicture.asset(AppIcons.messageBoldIcon, color: (userNameSelected == true)?AppColors.primary500Color:AppColors.grey500,),
                      const SizedBox(width: 12.0,),
                      Expanded(child: TextField(
                        focusNode: _userNameFocus,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'urbanistRegular',
                                color: AppColors.grey500
                            )
                        ),
                      ),)
                    ],
                  ), 20, 20, 0.0, 0.0)),
              24,
              24,
              50.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Container(
                  height: 60.0,
                  width: context.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                      border: Border.all(color: (passwordSelected == true)?AppColors.primary500Color:AppColors.grey50, width: 1.0),
                      color: AppColors.grey50),
                  child: AppPadding.paddingOnlyWidget(Row(
                    children: [
                      SvgPicture.asset(AppIcons.lockBoldIcon, color: (passwordSelected == true)?AppColors.primary500Color:AppColors.grey500,),
                      const SizedBox(width: 12.0,),
                      Expanded(child: TextField(
                        focusNode: _passwordFocus,
                        obscureText: passwordObscure,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'urbanistRegular',
                                color: AppColors.grey500
                            )
                        ),
                      ),),
                      const SizedBox(width: 12.0,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            passwordObscure = !passwordObscure;
                          });
                        },
                        child: SvgPicture.asset(AppIcons.hideBoldIcon, color: (passwordSelected == true)?AppColors.primary500Color:AppColors.grey500,),
                      ),
                    ],
                  ), 20, 20, 0.0, 0.0)),
              24,
              24,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    onTap: (){
                      setState(() {
                        rememberMe = !rememberMe;
                      });
                    },
                    child: Container(
                      height: 24.0,
                      width: 24.0,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all(width: 3.0, color: AppColors.primary500Color),
                          color: (rememberMe == true)? AppColors.primary500Color: AppColors.white
                      ),
                      child: (rememberMe == true)?Center(
                        child: Icon(Icons.check, size: 16.0, color: AppColors.white,),
                      ):Container(),
                    ),
                  ),
                  const SizedBox(width: 12.0,),
                  TextStyles.bodyM('Remember me', AppColors.grey900, 'semiBold', TextAlign.center)
                ],
              ),
              0.0, 0.0, 20.0, 0.0
          ),
          AppPadding.paddingOnlyWidget(
              AppButtons.buttonWithoutIcon(
                  'Sign in',
                  context.width,
                  58.0,
                  AppColors.white,
                  100,
                  AppColors.primary500Color),
              24.0,
              24.0,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgetPasswordSelectPage()));
                },
                child: TextStyles.bodyL("Forgot the password?", AppColors.primary500Color,
                    'semiBold', TextAlign.center),
              )
            ],
          ),24.0, 24.0, 24.0, 0.0),
          AppPadding.paddingOnlyWidget(
              SizedBox(
                height: 45.0,
                width: context.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: AppColors.grey200,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    TextStyles.bodyX(
                        'or continue with', AppColors.grey700, 'semiBold', TextAlign.center),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: AppColors.grey200,
                      ),
                    ),
                  ],
                ),
              ),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60.0,
                width: 90.0,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.grey200, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(16.0))
                ),
                child: Center(
                  child: SvgPicture.asset(AppIcons.facebook),
                ),
              ),
              Container(
                height: 60.0,
                width: 90.0,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.grey200, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(16.0))
                ),
                child: Center(
                  child: SvgPicture.asset(AppIcons.google),
                ),
              ),
              Container(
                height: 60.0,
                width: 90.0,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.grey200, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(16.0))
                ),
                child: Center(
                  child: SvgPicture.asset(AppIcons.apple),
                ),
              ),
            ],
          ), 24.0, 24.0, 20.0, 0.0),
          AppPadding.paddingOnlyWidget(
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextStyles.bodyM("Already have an account?", AppColors.grey500,
                      'regular', TextAlign.center),
                  const SizedBox(width: 8.0,),
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> const EasyLoginPage()));
                    },
                    child: TextStyles.bodyM('Sign in', AppColors.primary500Color,
                        'semiBold', TextAlign.center),
                  )
                ],
              ),
              24.0,
              24.0,
              48.0,
              0.0)
        ],
      ),
    );
  }
}
