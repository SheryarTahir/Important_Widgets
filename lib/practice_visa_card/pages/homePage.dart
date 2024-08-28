import 'package:Thirty_Widgets/practice_visa_card/pages/content.dart';
import 'package:Thirty_Widgets/practice_visa_card/utils/colors.dart';
import 'package:flutter/material.dart';

// import '../../visa_pages/content.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadows,
          ),
          child: const ContentPage1(),
        ),
      ),
    );
  }
}
