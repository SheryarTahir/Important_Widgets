import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        title: Text('Alert Widget'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialogBox(context);
            },
            child: Text('Show Alert Dialog')),
      ),
    );
  }
}

Future<void> _showMyDialogBox(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('This is an Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is a Demo'),
                Text('My Name is Sheryar'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text('Approved'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      });
}

// import 'package:flutter/material.dart';
//
// class AlertWidget extends StatelessWidget {
//   const AlertWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple.shade200,
//         title: Text('Alert Dialog'),
//       ),
//       body: Center(
//         child: ElevatedButton(onPressed: (){
//           _showAlertDialog(context);
//         },
//             child: Text('Show Alert')),
//       ),
//     );
//   }
// }
//
// Future<void> _showAlertDialog (BuildContext context) {
//   return showDialog(context: context, builder: (BuildContext context) {
//     return AlertDialog(
//       title: Text('This is an Alert'),
//       content: SingleChildScrollView(
//         child: ListBody(
//           children: [
//             Text('This is a Demo'),
//             Text('My name is Sheryar'),
//           ],
//         ),
//       ),
//       actions: [
//         TextButton(onPressed: (){},
//             child: Text('Aprrove'),
//         ),
//         TextButton(onPressed: (){
//           Navigator.pop(context);
//         },
//             child: Text('Cancel'))
//       ],
//     );
//   });
// }
//
//
// // import 'package:flutter/material.dart';
// //
// // class AlertWidget extends StatelessWidget {
// //   const AlertWidget({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.blueAccent.shade100,
// //       appBar: AppBar(
// //         backgroundColor: Colors.blue,
// //         title: Text('Alert Dialog'),
// //       ),
// //       body: Center(
// //         child: ElevatedButton(
// //           onPressed: () {
// //             _showMyDialog(context);
// //           },
// //           child: Text('Show Alert'),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // Future<void> _showMyDialog(BuildContext context) async {
// //   return showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: Text('This is an Alert'),
// //           content: SingleChildScrollView(
// //             child: ListBody(
// //               children: [
// //                 Text('This is a Demo'),
// //                 Text('My name is Sheryar'),
// //               ],
// //             ),
// //           ),
// //           actions: [
// //             TextButton(
// //               onPressed: () {},
// //               child: Text('Approve'),
// //             ),
// //             TextButton(onPressed: () {
// //               Navigator.pop(context);
// //             }, child: Text('Cancel'),),
// //           ],
// //         );
// //       });
// // }
