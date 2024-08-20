import 'package:Thirty_Widgets/widgets/ListGrid.dart';
import 'package:Thirty_Widgets/widgets/button.dart';
import 'package:Thirty_Widgets/widgets/container_sized.dart';
import 'package:Thirty_Widgets/widgets/dismissible.dart';
import 'package:Thirty_Widgets/widgets/drawer.dart';
import 'package:Thirty_Widgets/widgets/image.dart';
import 'package:Thirty_Widgets/widgets/rowsandcols.dart';
import 'package:Thirty_Widgets/widgets/snackbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purpleAccent,
      ),
      home: const ImageWidget(),
    );
  }
}
