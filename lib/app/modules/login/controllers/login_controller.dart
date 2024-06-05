import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController textEditingControllerUserName = TextEditingController();
  final TextEditingController textEditingControllerPassword = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    textEditingControllerUserName.clear();
    textEditingControllerPassword.clear();
    super.onClose();
  }


}
