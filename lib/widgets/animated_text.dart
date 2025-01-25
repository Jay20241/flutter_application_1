import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedText'), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText('Jay Trivedi', textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              speed: Duration(milliseconds: 100))
            ],
            totalRepeatCount: 4,
            pause: Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            ),

            const SizedBox(height: 20),
        
        
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText('CODE', textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
              ),
               RotateAnimatedText('INNOVATE', textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
              ),
               RotateAnimatedText('CHANGE', textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
              ),
            ],
            ),

          const SizedBox(height: 80),


            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('New Site Coming Soon', textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              WavyAnimatedText('New Site Coming Soon', textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            ])
        
          
          ],
        ),
      ),

    );
  }
}