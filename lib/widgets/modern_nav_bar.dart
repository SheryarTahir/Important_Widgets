import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:Thirty_Widgets/pages/home.dart';
import 'package:Thirty_Widgets/pages/search.dart';
import 'package:Thirty_Widgets/pages/setting.dart';
import 'package:Thirty_Widgets/pages/like.dart';

class ModernNavBar extends StatefulWidget {
  const ModernNavBar({super.key});

  @override
  State<ModernNavBar> createState() => _ModernNavBarState();
}

class _ModernNavBarState extends State<ModernNavBar> {

  int selectdIndex = 0;

  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectdIndex = index;
    });
    pageController.jumpToPage(selectdIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Modern Nav Bar'),
        // ),
        body: PageView(
          controller: pageController,
          children: [
            HomePage(),
            LikePage(),
            SearchPage(),
            SettingPage(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.deepPurple.shade50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              curve: Curves.easeInOut,
              tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.125), blurRadius: 15)],
              // tabActiveBorder: Border.all(color: Colors.black, width: 1),
              // duration: Duration(milliseconds: 900),
              // haptic: true,
              rippleColor: Colors.grey.shade200,
              padding: const EdgeInsets.all(16),
              iconSize: 24,
              // backgroundColor: Colors.deepPurple.shade50,
              tabBackgroundColor: Colors.deepPurple.withOpacity(0.1),
              gap: 8,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'HOME',
                ),
                GButton(
                  icon: Icons.favorite_outlined,
                  text: 'LIKES',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'SEARCH',
                ),
                GButton(
                    icon: Icons.settings,
                    text: 'SETTINGS'),
              ],onTabChange: onTapped,
            ),
          ),
        ));
  }
}
