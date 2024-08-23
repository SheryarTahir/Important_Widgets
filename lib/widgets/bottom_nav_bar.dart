import 'package:Thirty_Widgets/widgets/bottom_navigation_bar.dart';
import 'package:Thirty_Widgets/widgets/button.dart';
import 'package:flutter/material.dart';

class BottomNavBarPrac extends StatefulWidget {
  const BottomNavBarPrac({super.key});

  @override
  State<BottomNavBarPrac> createState() => _BottomNavBarPracState();
}

class _BottomNavBarPracState extends State<BottomNavBarPrac> {

  int selectedIndex = 0;

  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text('HOME'),
  //   Text('PERSON'),
  //   Text('SETTING'),
  //   Text('ADD'),
  // ];
  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple.shade200,
      //   title: Text('Bottom Navigation Bar'),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          ButtonWidget(),
        ],
      ),
      // Center(child: widgets.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
      ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
