import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/icons/app_icons.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/cart_order_checkout_screens/my_cart_page.dart';
import 'package:potea_plant_e_commerce/Presentation/ui/index_screens/home_screen/home_page.dart';

import '../../../../DesignSystem/colors/app_colors.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0; //New
  //New
  static List<Widget> _pages = <Widget>[
    HomePage(),
    MyCartPage(),
    Container(color: Colors.yellow,),
    Container(color: Colors.green,),
    Container(color: Colors.brown,),
  ];

  //New
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset((_selectedIndex == 0)?AppIcons.homeBoldIndexIcon:AppIcons.homeIndexIcon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset((_selectedIndex == 1)?AppIcons.bagBoldIndexIcon:AppIcons.bagIndexIcon),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset((_selectedIndex == 2)?AppIcons.buyBoldIndexIcon:AppIcons.buyIndexIcon),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset((_selectedIndex == 3)?AppIcons.walletBoldIndexIcon:AppIcons.walletIndexIcon),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset((_selectedIndex == 4)?AppIcons.profileBoldIndexIcon:AppIcons.profileIndexIcon),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontSize: 12.0,
          fontFamily: 'urbanistBold',
          color: AppColors.primary500Color
        ),
        selectedItemColor: AppColors.primary500Color,
        unselectedItemColor: AppColors.grey500,
        unselectedLabelStyle: TextStyle(
            fontSize: 12.0,
            fontFamily: 'urbanistBold',
            color: AppColors.grey500
        ),
      ),
    );
  }
}
