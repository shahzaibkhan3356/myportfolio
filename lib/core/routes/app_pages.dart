import 'package:get/get.dart';
import 'package:myportfolio/Presentation/Ui/About/About.dart';
import 'package:myportfolio/Presentation/Ui/Contact/ContactScreen.dart';
import 'package:myportfolio/Presentation/Ui/Education/Education.dart';
import 'package:myportfolio/Presentation/Ui/Experience/experience.dart';
import 'package:myportfolio/Presentation/Ui/Home/Home.dart';
import 'package:myportfolio/Presentation/Ui/Projects/Projects.dart';
import 'package:myportfolio/Presentation/Ui/Resume/Resume.dart';
import 'package:myportfolio/Presentation/Ui/Skills/SkillsPage.dart';
import 'package:myportfolio/Presentation/Ui/Splash/Splash.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
        GetPage(
      name: AppRoutes.experience,
      page: () => const ExperienceScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.about,
      page: () => const AboutScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.education,
      page: () => const EducationScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.skills,
      page: () => const SkillsScreen(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.projects,
      page: () => const ProjectsScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: AppRoutes.resume,
      page: () => const ResumeScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppRoutes.contact,
      page: () => const ContactScreen(),
      transition: Transition.zoom,
    ),
  ];
}
