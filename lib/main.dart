import 'package:flutter/material.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/cart_order_checkout_screens/my_cart_page.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/home_screen/home_page.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/index/index_page.dart';

import 'Presentation/ui/starter_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IndexPage(),
    );
  }
}