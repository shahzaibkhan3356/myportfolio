import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final bool isDark;
  final List<Widget> children;
  const InfoCard({super.key, required this.isDark, required this.children});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeOutExpo,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        gradient: LinearGradient(
          colors: isDark
              ? [
                  Colors.blueGrey.shade900.withOpacity(0.85),
                  Colors.black.withOpacity(0.7),
                ]
              : [
                  Colors.white.withOpacity(0.85),
                  Colors.blue.shade50.withOpacity(0.7),
                ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.blueAccent.withOpacity(0.18)
                : Colors.blue.withOpacity(0.10),
            blurRadius: 48,
            offset: const Offset(0, 24),
          ),
        ],
        border: Border.all(
          color: isDark
              ? Colors.blueAccent.withOpacity(0.18)
              : Colors.blue.withOpacity(0.10),
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
