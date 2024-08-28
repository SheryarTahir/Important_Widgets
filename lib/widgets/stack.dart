import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade200,
        title: Center(child: Text('S T A C K')),
      ),
      body: Stack(
        children: [
          Positioned(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.shade100,
                  image: DecorationImage(image: NetworkImage('https://japancitytour.com/wp-content/uploads/2021/03/doraemon.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ),
          Positioned(
              top: 20,
              left: 20,
              child:
          Container(
            height: 50,
            width: 50,
            color: Colors.deepPurple.shade100,
          ))
        ],
      ),
    );
  }
}
