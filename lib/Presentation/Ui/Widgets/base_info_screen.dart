import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/core/constants/fonts/appfonts.dart';

import 'info_card.dart';

class BaseInfoScreen extends StatelessWidget {
  final String title;
  final String lottieAsset;
  final List<Widget> children;
  final bool showBack;
  final String? backRouteName;
  const BaseInfoScreen({
    super.key,
    required this.title,
    required this.lottieAsset,
    required this.children,
    this.showBack = true,
    this.backRouteName,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: AppFonts.headingStyle(
          color: Colors.white,
          fontSize: 40,
        ),
        title: Text(title),
        automaticallyImplyLeading: false,
        leading: showBack
            ? IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.backward,
                  size: 20,
                  color: isDark ? Colors.white : Colors.black,
                ),
                onPressed: () {
                  if (backRouteName != null) {
                    Get.toNamed(backRouteName!);
                  } else {
                    Get.toNamed('/');
                  }
                },
              )
            : null,
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.transparent,
        foregroundColor: isDark ? Colors.white : Colors.black,
      ),
      body: Stack(
        children: [
          Center(
            child: IgnorePointer(
              child: Lottie.asset(
                lottieAsset,
                width: size.width,
                height: size.height,
                repeat: true,
                animate: true,
                alignment: Alignment.center,
              ),
            ),
          ),
          if (!isMobile)
            Padding(
              padding: const EdgeInsets.all(40),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 540,
                    maxHeight: size.height * 0.98,
                  ),
                  child: InfoCard(isDark: isDark, children: children),
                ),
              ),
            )
          else
            Center(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 420,
                    minWidth: 0,
                    minHeight: 0,
                  ),
                  child: InfoCard(isDark: isDark, children: children),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
