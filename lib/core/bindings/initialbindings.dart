
import 'package:get/get.dart';

class SplashController extends GetxController {
  var opacity = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 100), () {
      opacity.value = 1.0;
    });
    Future.delayed(const Duration(milliseconds: 2500), () async {
      opacity.value = 0.0;
      await Future.delayed(const Duration(milliseconds: 800));
      Get.offAllNamed('/home');
    });
  }
}