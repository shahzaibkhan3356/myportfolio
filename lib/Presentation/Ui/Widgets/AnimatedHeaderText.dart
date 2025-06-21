import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedHeaderText extends StatelessWidget {
  final double headerFontSize;
  final double subHeaderFontSize;
  const AnimatedHeaderText({
    super.key,
    required this.headerFontSize,
    required this.subHeaderFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText(
            'Hey there Stalker 👀',
            textStyle: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              shadows: const [
                Shadow(
                  blurRadius: 24,
                  color: Colors.blueAccent,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            speed: const Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            'Welcome to my Space 💻',
            textStyle: TextStyle(
              fontSize: 65,
              fontWeight: FontWeight.w600,
              color: Colors.cyanAccent,
              overflow: TextOverflow.ellipsis,
              shadows: const [
                Shadow(
                  blurRadius: 18,
                  color: Colors.cyan,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            speed: const Duration(milliseconds: 50),
          ),
          TyperAnimatedText(
            '"My Name is SHAHAIB KHAN 🙋‍♂️"',
            textStyle: TextStyle(
              fontSize: 75,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              shadows: const [
                Shadow(
                  blurRadius: 24,
                  color: Colors.blueAccent,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            speed: const Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            '"I am a Flutter Developer 👨‍💻"',
            textStyle: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              shadows: const [
                Shadow(
                  blurRadius: 24,
                  color: Colors.blueAccent,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            speed: const Duration(milliseconds: 60),
          ),
        ],
        isRepeatingAnimation: true,
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
        pause: const Duration(milliseconds: 800),
      ),
    );
  }
}
