import 'package:Thirty_Widgets/utils/colors.dart';
import 'package:Thirty_Widgets/visa_pages/content.dart';
import 'package:flutter/material.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,

      body: Center(
        child: Container(
          margin:  const EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadows,
          ),
          child:  const ContentPage(),
        ),
      ),
    );
  }
}
