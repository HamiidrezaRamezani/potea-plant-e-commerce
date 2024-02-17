import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:potea_plant_e_commerce/DesignSystem/buttons/app_buttons.dart';
import 'package:potea_plant_e_commerce/DesignSystem/colors/app_colors.dart';
import 'package:potea_plant_e_commerce/DesignSystem/images/app_images.dart';
import 'package:potea_plant_e_commerce/DesignSystem/padding/app_padding.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/authentication_screens/login/login_page.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/starter_screens/on_boarding_screen/on_boarding_items.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController();

  List<Widget> onBoardingItems = [
    OnBoardingItems(
      image: AppImages.plant07,
      title: 'We provide high quality plants just for you',
    ),
    OnBoardingItems(
      image: AppImages.plant09,
      title: 'Your satisfaction is our number one priority',
    ),
    OnBoardingItems(
      image: AppImages.plant04,
      title: 'Lets Shop Your Favorite Plants with Potea Now!',
    ),
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
          controller: pageController,
          itemCount: onBoardingItems.length,
          itemBuilder: (BuildContext context, int index) {
            return onBoardingItems[index];
          },
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: AppPadding.paddingOnlyWidget(
                InkWell(
                  onTap: () {
                    pageController
                        .jumpToPage(_currentPage + 1);
                    if(_currentPage >= 2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    }
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  child: AppButtons.buttonWithoutIcon((_currentPage == 2)?'Get Started':'Next', (_currentPage == 2)?120:65.0, 56.0,
                      AppColors.white, 35.0, AppColors.primary500Color),
                ),
                0.0,
                0.0,
                0.0,
                24.0)),
        Align(
            alignment: Alignment.bottomCenter,
            child: AppPadding.paddingOnlyWidget(
                DotsIndicator(
                  dotsCount: onBoardingItems.length,
                  position: _currentPage,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(27.0, 9.0),
                    activeColor: AppColors.primary500Color,
                    color: AppColors.grey300,
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                0.0,
                0.0,
                0.0,
                100.0))
      ]),
    );
  }
}
