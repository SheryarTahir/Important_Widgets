import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade100,
        title: Text('SnackBar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: (){
            final snackbar = SnackBar(
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              action: SnackBarAction(label: 'Undo', onPressed: (){}),
                backgroundColor: Colors.deepPurple.shade50,
                duration: const Duration(milliseconds: 3000),
                content: Text('This is a SnackBar'));
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
              child: Text('Show Snackbar')),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
//
// class SnackBarWidget extends StatelessWidget {
//   const SnackBarWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple.shade200,
//         title: Text('SnackBar'),
//       ),
//       body: Container(
//         child: Center(
//           child: ElevatedButton(onPressed: () {
//             final snackbar = SnackBar(
//               action: SnackBarAction(label: 'Undo', onPressed: (){},),
//               behavior: SnackBarBehavior.floating,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               duration: const Duration(milliseconds: 3000),
//                 backgroundColor: Colors.deepPurple.shade50,
//                 content: Text('This is a Snackbar'));
//             ScaffoldMessenger.of(context).showSnackBar(snackbar);
//           },
//               child: Text('Show Snackbar'),),
//         ),
//       ),
//     );
//   }
// }
