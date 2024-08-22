import 'package:Thirty_Widgets/widgets/ListGrid.dart';
import 'package:Thirty_Widgets/widgets/button.dart';
import 'package:Thirty_Widgets/widgets/dismissible.dart';
import 'package:Thirty_Widgets/widgets/snackbar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  
  int selectedIndex = 0;
  
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Person')
  // ];

  PageController pageController = PageController();

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
        // widgets.elementAt(selectedIndex)),
      body: Center(child: PageView(
        controller: pageController,
        children: [
          ButtonWidget(),
          DismissibleWidget(),
          ListGrid(),
          SnackBarWidget(),
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}

// import 'package:Thirty_Widgets/widgets/ListGrid.dart';
// import 'package:Thirty_Widgets/widgets/button.dart';
// import 'package:Thirty_Widgets/widgets/dismissible.dart';
// import 'package:Thirty_Widgets/widgets/snackbar.dart';
// import 'package:flutter/material.dart';
//
// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});
//
//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }
//
// class _BottomNavState extends State<BottomNav> {
//
//   int selectedIndex = 0;
//
//   PageController pageController = PageController();
//   // List<Widget> widgets = [
//   //   Text('Home'),
//   //   Text('Search'),
//   //   Text('Add'),
//   //   Text('Profile'),
//   // ];
//
//   void onTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//     pageController.jumpToPage(index);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple.shade100,
//       // appBar: AppBar(
//       //   backgroundColor: Colors.deepPurple.shade200,
//       //   title: Text('Bottom Navigation Bar'),
//       // ),
//       body: PageView(
//         controller: pageController,
//         children: [
//           ButtonWidget(),
//           DismissibleWidget(),
//           ListGrid(),
//           SnackBarWidget(),
//         ],
//       ),
//       // widgets.elementAt(selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.add), label: 'Add'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person), label: 'Person'),
//         ],
//         currentIndex: selectedIndex,
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         onTap: onTapped,
//       ),
//     );
//   }
// }
