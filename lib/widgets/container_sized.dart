import 'package:flutter/material.dart';

// ignore: camel_case_types
class container_sized extends StatelessWidget {
  const container_sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(child: Text('Container and SizedBox')),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.blue,
            // borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(blurRadius: 20, spreadRadius: 5,
              color: Colors.black),
            ],
          ),
          height: 100,
          width: 100,
          child: Center(child:
          Container(
            color: Colors.red,
          ),
          // Text('Hello'),
          ),
        ),
      ),
    );
  }
}
