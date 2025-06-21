import 'package:flutter/material.dart';

import 'info_bullet.dart';

class InfoEntry extends StatelessWidget {
  final String title;
  final String year;
  final List<String> bullets;
  final bool isDark;
  const InfoEntry({
    super.key,
    required this.title,
    required this.year,
    required this.bullets,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : Colors.blueGrey.shade900,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          year,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.blueAccent,
            letterSpacing: 0.2,
          ),
        ),
        const SizedBox(height: 14),
        AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 600),
          style: TextStyle(
            fontSize: 14.5,
            color: isDark ? Colors.white70 : Colors.blueGrey.shade900,
            height: 1.6,
            fontWeight: FontWeight.w500,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...bullets.map(
                (text) => Align(
                  alignment: Alignment.centerLeft,
                  child: InfoBullet(text: text),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
