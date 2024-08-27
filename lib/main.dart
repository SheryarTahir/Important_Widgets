import 'package:Thirty_Widgets/pages/home.dart';
import 'package:Thirty_Widgets/pages/like.dart';
import 'package:Thirty_Widgets/pages/search.dart';
import 'package:Thirty_Widgets/pages/setting.dart';
import 'package:Thirty_Widgets/widgets/ListGrid.dart';
import 'package:Thirty_Widgets/widgets/alertdialog.dart';
import 'package:Thirty_Widgets/widgets/animated_text.dart';
import 'package:Thirty_Widgets/widgets/bottom_nav_bar.dart';
import 'package:Thirty_Widgets/widgets/bottom_navigation_bar.dart';
import 'package:Thirty_Widgets/widgets/bottom_sheet.dart';
import 'package:Thirty_Widgets/widgets/button.dart';
import 'package:Thirty_Widgets/widgets/container_sized.dart';
import 'package:Thirty_Widgets/widgets/dismissible.dart';
import 'package:Thirty_Widgets/widgets/drawer.dart';
import 'package:Thirty_Widgets/widgets/dropdown_list.dart';
import 'package:Thirty_Widgets/widgets/dropdownlistprac.dart';
import 'package:Thirty_Widgets/widgets/form_widget.dart';
import 'package:Thirty_Widgets/widgets/forms.dart';
import 'package:Thirty_Widgets/widgets/image.dart';
import 'package:Thirty_Widgets/widgets/modern_nav_bar.dart';
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
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple.shade50,
      ),
      home: const Forms1Widget(),
    );
  }
}
