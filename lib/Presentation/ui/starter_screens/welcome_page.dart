import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    double heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/png/welcome_page_image.png', width: widthOfScreen * 0.9,),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: heightOfScreen * 0.7,
              width: widthOfScreen,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFFF8F8F8),
                    const Color(0xFFF8F8F8).withOpacity(0.0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                )
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: heightOfScreen * 0.4,
              width: widthOfScreen,
              color: Colors.red, //for test
              child: Column(
                children: [
                  Text('Welcome to')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
