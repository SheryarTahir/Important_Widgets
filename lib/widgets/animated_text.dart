import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Animated Text Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
              TypewriterAnimatedText('Sheryar Tahir', textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('HELLO', textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600, color: Colors.red
                ),
                ),
                RotateAnimatedText('HANDSOME', textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600, color: Colors.red
                ),
                ),
                RotateAnimatedText('Sheryar Tahir', textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
                ),
              ],
              // totalRepeatCount: 4,
              // pause: Duration(milliseconds: 200),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('HELLO WORLD!', textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
            WavyAnimatedText('HELLO WORLD!', textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
            ])
          ],
        ),
      ),
    );
  }
}
