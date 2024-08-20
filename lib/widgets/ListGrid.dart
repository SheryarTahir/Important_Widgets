// Practice code
import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['Orange', 'Mango', 'Banana', 'Apple'];
    Map Person_fruits = {
      'Fruits': ['Orange', 'Mango', 'Banana', 'Apple'],
      'Names': ['Sheryar', 'Shahzaib', 'Mohsin', 'Furqan'],
    };
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: const Center(child: Text('List View and Grid View')),
      ),
      body: GridView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index){
          return Card(
            color: Colors.deepPurple.shade50,
            child: Center(child: Text(fruits[index], style: const TextStyle(color: Colors.black),)),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 2/2,
        ),
        // children: [
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
          // Card(
          //   child: Center(child: Text('Orange')),
          // ),
        // ],
      ),
    );
  }
}

// Learning material

// import 'package:flutter/material.dart';
//
// class ListGrid extends StatelessWidget {
//   const ListGrid({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     List<String> fruits = ['Orange', 'Apple', 'Banana', 'Mango'];
//     Map person_fruits = {
//       'Fruits': ['Orange', 'Apple', 'Banana', 'Mango'],
//       'Names': ['Sheryar', 'Shahzaib', 'Mohsin', 'Rayyan'],
//     };
//     return Scaffold(
//       backgroundColor: Colors.deepPurple.shade100,
//       appBar: AppBar(
//         title: Center(child: Text('List View and Grid View')),
//         backgroundColor: Colors.deepPurple.shade200,
//       ),
//       body: Container(
//         // child: ListView.builder(
//         //   itemCount: fruits.length,
//         //   itemBuilder: (context, index) {
//         //     return Card(
//         //       color: Colors.deepPurple.shade50,
//         //       child: ListTile(
//         //         leading: Icon(Icons.person),
//         //         onTap: () {
//         //           print(person_fruits['Fruits'][index]);
//         //         },
//         //         title: Text(person_fruits['Fruits'][index], style: TextStyle(color: Colors.black),),
//         //         subtitle: Text(person_fruits['Names'][index], style: TextStyle(color: Colors.black),),
//         //       ),
//         //     );
//         //   }
//
//         child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//             itemCount: fruits.length,
//             itemBuilder: (context, index){
//           return Card(
//             child: Center(child: Text(fruits[index]),),
//           );
//             }),
//
//         // child: GridView(
//         //     gridDelegate:
//         //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
//         //           crossAxisSpacing: 20,
//         //           mainAxisSpacing: 20,
//         //           childAspectRatio: 2/2,
//         //         ),
//         // children: [
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         //   Card(
//         //     child: Center(child: Text('Orange')),
//         //   ),
//         // ],
//         // ),
//
//         // ListView property Card with stactic Data
//         // children: [
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // Card(
//         //   color: Colors.deepPurple.shade50,
//         //   child: ListTile(
//         //     title: Text('Orange', style: TextStyle(color: Colors.black),),
//         //     subtitle: Text('Sheryar', style: TextStyle(color: Colors.black54),),
//         //   ),
//         // ),
//         // ],
//         // ),
//       ),
//     );
//   }
// }
