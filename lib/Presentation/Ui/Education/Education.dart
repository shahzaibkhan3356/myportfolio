import 'package:flutter/material.dart';

import '../widgets/base_info_screen.dart';
import '../widgets/info_entry.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return BaseInfoScreen(
      title: 'Education',
      lottieAsset: 'assets/edu.json',
      children: [
        InfoEntry(
          isDark: isDark,
          title: 'Intermediate in Computer Science (ICS)',
          year: 'Completed: 2023',
          bullets: [
            'Focused on foundational concepts in computer science, mathematics, and physics.',
            'Built a strong academic base for further studies and professional growth.',
          ],
        ),
        const SizedBox(height: 32),
        Divider(
          color: isDark ? Colors.white24 : Colors.blueGrey.shade100,
          thickness: 1.2,
          height: 1,
        ),
        const SizedBox(height: 32),
        InfoEntry(
          isDark: isDark,
          title: 'Diploma in Information Technology (DIT)',
          year: 'Completed: 2021 (1-year program)',
          bullets: [
            'Acquired practical and theoretical knowledge in core IT skills.',
            'Covered programming, networking fundamentals, and database management.',
          ],
        ),
      ],
    );
  }
}
