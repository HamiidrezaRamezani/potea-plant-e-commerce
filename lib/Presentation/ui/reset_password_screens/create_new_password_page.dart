import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:potea_plant_e_commerce/DesignSystem/animations/lotties/app_lottie_animations.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/dialog/app_dialog.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../DesignSystem/buttons/app_buttons.dart';
import '../../../DesignSystem/icons/app_icons.dart';
import '../../../DesignSystem/images/app_images.dart';
import '../../../DesignSystem/padding/app_padding.dart';
import '../../../DesignSystem/typography/text_style.dart';
import '../index_screens/home_screen/home_page.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  bool passwordObscure = false;
  bool confirmPasswordObscure = false;
  bool passwordSelected = false;
  bool confirmPasswordSelected = false;
  bool rememberMe = false;
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _passwordFocus.addListener(_onFocusPasswordChange);
    _confirmPasswordFocus.addListener(_onFocusConfirmPasswordChange);
  }

  @override
  void dispose() {
    super.dispose();
    _passwordFocus.removeListener(_onFocusPasswordChange);
    _passwordFocus.dispose();
    _confirmPasswordFocus.removeListener(_onFocusConfirmPasswordChange);
    _confirmPasswordFocus.dispose();
  }

  Future<void> navigateToNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  void _onFocusPasswordChange() {
    if (_passwordFocus.hasFocus == true) {
      setState(() {
        passwordSelected = true;
      });
    } else {
      setState(() {
        passwordSelected = false;
      });
    }
  }

  void _onFocusConfirmPasswordChange() {
    if (_confirmPasswordFocus.hasFocus == true) {
      setState(() {
        confirmPasswordSelected = true;
      });
    } else {
      setState(() {
        confirmPasswordSelected = false;
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
            title:
                TextStyles.heading4('Create New Password', AppColors.grey900),
          ),
          const SizedBox(
            height: 33.0,
          ),
          SizedBox(
            height: context.height * 0.3,
            child: Center(
              child: Image.asset(AppImages.createNewPasswordVector,
                  width: context.width * 0.7),
            ),
          ),
          AppPadding.paddingOnlyWidget(
              TextStyles.custom('Create Your New Password', AppColors.grey900,
                  18.0, 'urbanistMedium', TextAlign.left),
              24.0,
              24.0,
              60.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Container(
                  height: 60.0,
                  width: context.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(16.0)),
                      border: Border.all(
                          color: (passwordSelected == true)
                              ? AppColors.primary500Color
                              : AppColors.grey50,
                          width: 1.0),
                      color: AppColors.grey50),
                  child: AppPadding.paddingOnlyWidget(
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.lockBoldIcon,
                            color: (passwordSelected == true)
                                ? AppColors.primary500Color
                                : AppColors.grey500,
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: TextField(
                              focusNode: _passwordFocus,
                              obscureText: passwordObscure,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'urbanistRegular',
                                      color: AppColors.grey500)),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                passwordObscure = !passwordObscure;
                              });
                            },
                            child: SvgPicture.asset(
                              AppIcons.hideBoldIcon,
                              color: (passwordSelected == true)
                                  ? AppColors.primary500Color
                                  : AppColors.grey500,
                            ),
                          ),
                        ],
                      ),
                      20,
                      20,
                      0.0,
                      0.0)),
              24,
              24,
              20.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              Container(
                  height: 60.0,
                  width: context.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(16.0)),
                      border: Border.all(
                          color: (confirmPasswordSelected == true)
                              ? AppColors.primary500Color
                              : AppColors.grey50,
                          width: 1.0),
                      color: AppColors.grey50),
                  child: AppPadding.paddingOnlyWidget(
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.lockBoldIcon,
                            color: (confirmPasswordSelected == true)
                                ? AppColors.primary500Color
                                : AppColors.grey500,
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: TextField(
                              focusNode: _confirmPasswordFocus,
                              obscureText: confirmPasswordObscure,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Confirm Password',
                                  hintStyle: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'urbanistRegular',
                                      color: AppColors.grey500)),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                confirmPasswordObscure =
                                    !confirmPasswordObscure;
                              });
                            },
                            child: SvgPicture.asset(
                              AppIcons.hideBoldIcon,
                              color: (passwordSelected == true)
                                  ? AppColors.primary500Color
                                  : AppColors.grey500,
                            ),
                          ),
                        ],
                      ),
                      20,
                      20,
                      0.0,
                      0.0)),
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
                    onTap: () {
                      setState(() {
                        rememberMe = !rememberMe;
                      });
                    },
                    child: Container(
                      height: 24.0,
                      width: 24.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all(
                              width: 3.0, color: AppColors.primary500Color),
                          color: (rememberMe == true)
                              ? AppColors.primary500Color
                              : AppColors.white),
                      child: (rememberMe == true)
                          ? Center(
                              child: Icon(
                                Icons.check,
                                size: 16.0,
                                color: AppColors.white,
                              ),
                            )
                          : Container(),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  TextStyles.bodyM('Remember me', AppColors.grey900, 'semiBold',
                      TextAlign.center)
                ],
              ),
              0.0,
              0.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              InkWell(
                onTap: () {
                  navigateToNextPage();
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AppDialog.congratulationDialog(
                            AppImages.congratulationsVector,
                            'Congratulations!',
                            'Your account is ready to use. You will be redirected to the Home page in a few seconds..');
                      });

                },
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                child: AppButtons.buttonWithoutIcon('Continue', context.width,
                    58.0, AppColors.white, 100, AppColors.primary500Color),
              ),
              24.0,
              24.0,
              80.0,
              0.0),
        ],
      ),
    );
  }
}
