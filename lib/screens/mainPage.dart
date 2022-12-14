// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/icon.dart';
import '../utils/strings.dart';
import 'home_page.dart';
import 'menu/menu.dart';
import 'more_page.dart';
import 'offer_page.dart';
import 'profilepage.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final List<Widget> _pages = [
    const MenuScreen(),
    const OfferPage(),
    const HomePage(),
    const ProfilePage(),
    const MorePage()
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }

    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentPage,
        barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
        arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
        itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
        itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
        circleOutline: 15.0,
        shadowAllowance: 0.0,
        circleSize: 50.0,
        blurShadowRadius: 50.0,
        circleColor: orange,
        activeIconColor: white,
        inactiveIconColor: grey,
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}

List<TabData> getTabsData() {
  return [
    TabData(
      icon: icMenu,
      iconSize: 25.0,
      title: menu,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: icOffer,
      iconSize: 25,
      title: offer,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: icHome,
      iconSize: 25,
      title:home,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: icProfile,
      iconSize: 25,
      title: profile,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: icMore,
      iconSize: 25,
      title: mores,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  ];
}
