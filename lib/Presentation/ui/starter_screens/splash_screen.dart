import 'package:flutter/material.dart';

import '../../../DesignSystem/colors/app_colors.dart';
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
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
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
                child: CircularProgressIndicator(
                  color: AppColors.primary500Color,
                ),
              )
            )
          )
        ],
      )
    );
  }
}
