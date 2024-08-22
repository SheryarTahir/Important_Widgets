import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Bottom Sheet Widget'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(
            isDismissible: false,
              enableDrag: false,
              backgroundColor: Theme.of(context).primaryColor,
              context: (context), builder: (context){
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text('Orange'),
                  subtitle: Text('Sheryar'),
                ),
                ListTile(
                  title: Text('Orange'),
                  subtitle: Text('Sheryar'),
                ),
                ListTile(
                  title: Text('Orange'),
                  subtitle: Text('Sheryar'),
                ),
                ListTile(
                  title: Text('Orange'),
                  subtitle: Text('Sheryar'),
                ),
                ListTile(
                  title: Text('Orange'),
                  subtitle: Text('Sheryar'),
                ),
                ListTile(
                  title: Text('Orange'),
                  subtitle: Text('Sheryar'),
                ),
              ],
            );
          });
        }, child:
        Text('Show Bottom Sheet')),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
//
// class BottomSheetWidget extends StatelessWidget {
//   const BottomSheetWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).primaryColor,
//         title: Text('Bottom Sheet Widget'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: (){
//             showModalBottomSheet(
//               isDismissible: false,
//               enableDrag: true,
//               backgroundColor: Theme.of(context).primaryColor,
//               context: (context), builder: (context){
//             return Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Sheryar'),
//                 ),
//                 ListTile(
//                   title: Text('Apple'),
//                   subtitle: Text('Shahzaib'),
//                 ),
//                 ListTile(
//                   title: Text('Banana'),
//                   subtitle: Text('Mohsin'),
//                 ),
//                 ListTile(
//                   title: Text('Mango'),
//                   subtitle: Text('Furqan'),
//                 ),
//                 ListTile(
//                   title: Text('Strawberry'),
//                   subtitle: Text('Rayyan'),
//                 ),
//               ],
//             );
//           });
//         },
//             child: Text('Show Bottom Sheet')),
//       ),
//     );
//   }
// }
