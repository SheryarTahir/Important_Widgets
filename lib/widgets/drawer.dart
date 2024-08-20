import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.deepPurple.shade300,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.all(10),
                // color: Colors.red,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.IrUBHhdMo6wWLFueKNreRwHaHa&pid=Api'),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sheryar'),
                        Text('tahirsheryar6@gmail.com'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text('Inbox'),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text('Draft'),
            ),
            ListTile(
              leading: Icon(Icons.archive),
              title: Text('Archieve'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Sent'),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: Text('Drawer'),
      ),
      body: Center(
        child: Container(
          child: Text('Hi, there!'),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class DrawerWidget extends StatefulWidget {
//   const DrawerWidget({super.key});
//
//   @override
//   State<DrawerWidget> createState() => _DrawerWidgetState();
// }
//
// class _DrawerWidgetState extends State<DrawerWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         backgroundColor: Colors.black54,
//         child: ListView(
//           children: [
//             DrawerHeader(
//               padding: EdgeInsets.zero,
//               child: Container(
//                   // color: Colors.red,
//                   padding: const EdgeInsets.all(10),
//                   child: const Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 40,
//                         backgroundImage: NetworkImage(
//                             'https://tse1.mm.bing.net/th?id=OIP.IrUBHhdMo6wWLFueKNreRwHaHa&pid=Api'),
//                       ),
//                       SizedBox(width: 10,),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('Sheryar'),
//                           Text('tahirsheryar6@gmail.com'),
//                         ],
//                       ),
//                     ],
//                   )),
//             ),
//             const ListTile(
//               leading: Icon(Icons.inbox),
//               title: Text('Inbox'),
//             ),
//             const ListTile(
//               leading: Icon(Icons.drafts),
//               title: Text('Draft'),
//             ),
//             const ListTile(
//               leading: Icon(Icons.archive),
//               title: Text('Archieve'),
//             ),
//             const ListTile(
//               leading: Icon(Icons.send),
//               title: Text('Sent'),
//             ),
//             const ListTile(
//               leading: Icon(Icons.delete),
//               title: Text('Trash'),
//             ),
//             const Divider(),
//             const ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settingss'),
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.deepPurple.shade100,
//       appBar: AppBar(
//         title: const Text('Drawer'),
//         backgroundColor: Colors.deepPurple.shade200,
//       ),
//       body: Center(
//         child: Container(
//           child: const Text(
//             'Home',
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// //
// // class DrawerWidget extends StatefulWidget {
// //   const DrawerWidget({super.key});
// //
// //   @override
// //   State<DrawerWidget> createState() => _DrawerWidgetState();
// // }
// //
// // class _DrawerWidgetState extends State<DrawerWidget> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       drawer: Drawer(
// //         backgroundColor: Colors.deepPurple.shade300,
// //         child: ListView(
// //           children: [
// //             DrawerHeader(
// //               padding: EdgeInsets.zero,
// //               child: Container(
// //                 padding: const EdgeInsets.all(10),
// //                 // color: Colors.red,
// //                 child: const Row(
// //                   children: [
// //                     CircleAvatar(
// //                       radius: 40,
// //                       backgroundImage: NetworkImage(
// //                           'https://tse1.mm.bing.net/th?id=OIP.IrUBHhdMo6wWLFueKNreRwHaHa&pid=Api'),
// //                     ),
// //                     SizedBox(width: 10),
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Text(
// //                           'Sheryar Tahir',
// //                           style: TextStyle(fontWeight: FontWeight.bold),
// //                         ),
// //                         Text('tahirsheryar6@gmail.com'),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             const ListTile(
// //               leading: Icon(Icons.folder),
// //               title: Text('My Files'),
// //             ),
// //             const ListTile(
// //               leading: Icon(Icons.group),
// //               title: Text('Share with me'),
// //             ),
// //             const ListTile(
// //               leading: Icon(Icons.star),
// //               title: Text('Stared'),
// //             ),
// //             const ListTile(
// //               leading: Icon(Icons.delete),
// //               title: Text('Trash'),
// //             ),
// //             const ListTile(
// //               leading: Icon(Icons.upload),
// //               title: Text('Uploads'),
// //             ),
// //             const Divider(),
// //             const ListTile(
// //               leading: Icon(Icons.share),
// //               title: Text('Share'),
// //             ),
// //             const ListTile(
// //               leading: Icon(Icons.logout),
// //               title: Text('Logout'),
// //             ),
// //           ],
// //         ),
// //       ),
// //       backgroundColor: Colors.deepPurple.shade100,
// //       appBar: AppBar(
// //         title: const Text('Drawer'),
// //         backgroundColor: Colors.deepPurple.shade200,
// //       ),
// //       body: Container(
// //         child: const Center(child: Text('Home')),
// //       ),
// //     );
// //   }
// // }
