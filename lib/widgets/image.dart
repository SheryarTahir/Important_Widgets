import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          'Image Widget',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 300,
          // color: Colors.blueAccent,
          child: CachedNetworkImage(imageUrl: 'https://tse4.mm.bing.net/th?id=OIP.uXLLU88V0TEjbvPPIBchmQHaJQ&pid=Api&P=0&h=220',
          placeholder: (context, index) => Center(child: CircularProgressIndicator()),
          errorWidget: (context, url,index) => Icon(Icons.error),
          ),
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       blurRadius: 10,
          //       color: Colors.grey.shade900,
          //       spreadRadius: 5,
          //     ),
          //   ],
          //   image: const DecorationImage(
          //       image: AssetImage(
          //         'assets/download.jpg',
          //       ),
          //       fit: BoxFit.cover),
          //   color: Colors.blueAccent,
          //   borderRadius: BorderRadius.circular(20),
          // ),
        ),
      ),
    );
  }
}
