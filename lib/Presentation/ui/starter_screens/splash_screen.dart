import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:potea_plant_e_commerce/DesignSystem/animations/lotties/app_lottie_animations.dart';
import 'welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
      MaterialPageRoute(builder: (context) => const WelcomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/png/logo.png', width: 160),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 250.0,
              child: Center(
                child: Lottie.asset(AppLottieAnimations.appLoading, height: 120.0)
              )
            )
          )
        ],
      )
    );
  }
}
