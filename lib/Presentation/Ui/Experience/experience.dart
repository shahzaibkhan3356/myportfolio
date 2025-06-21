import 'package:flutter/material.dart';

import '../widgets/base_info_screen.dart';
import '../widgets/info_entry.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return BaseInfoScreen(
      title: 'Experience',
      lottieAsset: 'assets/exp.json',
      backRouteName: '/',
      children: [
        InfoEntry(
          isDark: isDark,
          title: 'EmergSol Solutions',
          year: 'Flutter Developer (Onsite, 2023–2024)',
          bullets: [
            'Collaborated with designers and backend teams to integrate advanced features (real-time updates, offline capabilities).',
            'Optimized app performance and published multiple apps to Play Store and App Store.',
            'Developed and maintained robust Flutter and native Android apps.',
            'Worked with cross-functional teams for high-quality, efficient project delivery.',
            'Wrote scalable, clean code using best practices and effective state management.',
            'Contributed across the full app lifecycle: concept, design, deployment, and maintenance.',
            'Ensured responsive, seamless user experiences.',
          ],
        ),
      ],
    );
  }
}
