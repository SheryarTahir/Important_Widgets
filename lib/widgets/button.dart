import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Center(child: Text('Buttons')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.all(15.0)),
                overlayColor: WidgetStatePropertyAll(Colors.white70),
                elevation: WidgetStateProperty.all(20),
                backgroundColor:
                    WidgetStatePropertyAll(Colors.amberAccent.shade200),
              ),
              onPressed: () {},
              child: Text(
                'Press Me!',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                overlayColor: WidgetStatePropertyAll(Colors.white70),
                backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
                elevation: WidgetStatePropertyAll(20),
              ),
              onPressed: () {
                print('Button Got Pressed');
              },
              child: Text('Press Me!', style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class ButtonWidget extends StatelessWidget {
//   const ButtonWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text('Button'),
//         backgroundColor: Colors.purple.shade200,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//               style: ButtonStyle(
//                 padding: WidgetStateProperty.all(EdgeInsets.all(10)),
//                 overlayColor: WidgetStateProperty.all(Colors.white70),
//                 elevation: WidgetStateProperty.all(20),
//                 backgroundColor: WidgetStateProperty.all(Colors.yellow)
//               ),
//               onPressed: () {},
//               child: Text('Press Me!', style: TextStyle(fontSize: 20, color: Colors.black54),),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 50,
//               width: 300,
//               child: ElevatedButton(
//                 style: ButtonStyle(
//                   overlayColor: WidgetStatePropertyAll(Colors.white70),
//                   shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(40),
//                   )),
//                   backgroundColor: WidgetStatePropertyAll(Theme.of(context).primaryColor),
//                 ),
//                 onPressed: () {
//                 print('Like');
//               },child: Text('Press Me!', style: TextStyle(fontSize: 20, color: Colors.white),),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
