import 'package:get/get.dart';
import 'package:talbati/app/data/values/strings.dart';
import 'package:talbati/app/routes/app_pages.dart';


class SplashController extends GetxController {
  final appName = AppStrings.appName.obs;

  @override
  void onInit() {
    nextStep();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void nextStep() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.offAllNamed(Routes.LOGIN);
  }
}
