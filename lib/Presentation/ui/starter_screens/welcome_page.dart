import 'package:flutter/material.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/starter_screens/on_boarding_screen/on_boarding_page.dart';

import '../../../DesignSystem/typography/text_style.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  Future<void> navigateToNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const OnBoardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    double heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/png/welcome_page_image.png',
              width: widthOfScreen * 0.9,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: heightOfScreen * 0.7,
              width: widthOfScreen,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color(0xFFF8F8F8),
                const Color(0xFFF8F8F8).withOpacity(0.0)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: heightOfScreen * 0.6,
                width: widthOfScreen,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppColors.silver1,
                  AppColors.silver1.withOpacity(0),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 62),
                child: SizedBox(
                  height: 270,
                  child: AppPadding.paddingOnlyWidget(
                      Column(
                        children: [
                          Row(
                            children: [
                              TextStyles.heading1(
                                  'Welcome To 👋', AppColors.grey900),
                            ],
                          ),
                          Row(
                            children: [
                              TextStyles.custom(
                                  'Potea',
                                  AppColors.gradientGreen.first,
                                  96.0,
                                  'urbanistBold', TextAlign.left),
                            ],
                          ),
                          TextStyles.bodyX(
                              'The best plant e-commerce & online store app of the century for your needs!', AppColors.grey800, 'semiBold', TextAlign.left),
                        ],
                      ),
                      32.0,
                      32.0,
                      0.0,
                      0.0),
                )),
          )
        ],
      ),
    );
  }
}
