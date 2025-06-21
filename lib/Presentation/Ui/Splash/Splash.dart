import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/core/bindings/initialbindings.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final SplashController controller = Get.put(SplashController());

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Obx(
          () => AnimatedOpacity(
            opacity: controller.opacity.value,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(), // Prevents scrolling
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Lottie Animation
                  SizedBox(
                    width: size.width * 0.55,
                    height: size.width * 0.55,
                    child: Lottie.asset(
                      'assets/anim.json',
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      repeat: true,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
