import 'package:Thirty_Widgets/practice_visa_card/utils/colors.dart';
import 'package:Thirty_Widgets/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentPage1 extends StatelessWidget {
  const ContentPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: -150,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
        Positioned(
          bottom: -470,
          left: -200,
          child: Container(
            height: 600,
            width: 600,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
        const Positioned(
          top: 25,
          left: 15,
          child: SizedBox(
            height: 45,
            child: Image(
              image: NetworkImage(
                  'https://logolook.net/wp-content/uploads/2023/09/Visa-Logo-2006.png'),
            ),
          ),
        ),
        Positioned(
          top: 62,
          left: 20,
          child: Modifiedtext(
              text: "it's where you want to be",
              color: Colors.grey.shade800,
              size: 20),
        ),
        Positioned(
          bottom: 40,
          left: 20,
          child: Text("5678 2389 0123 7894", style: GoogleFonts.sourceCodePro(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),)
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Text('SHERYAR TAHIR',
          style: GoogleFonts.sourceCodePro(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ))
        ),
        const Positioned(
            right: -32,
            top: 10,
            child: SizedBox(
                height: 80,
                child: Image(image: NetworkImage('https://usa.visa.com/dam/VCOM/regional/na/us/pay-with-visa/images/card-chip-800x450.png'))))

      ],
    );
  }
}
