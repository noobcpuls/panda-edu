import 'package:flutter_application_3/main.dart';
import 'package:get/get.dart';

class BuilderController extends GetxController {
  int selectedItem = 0;
  bool isDarkTheme = false;

  updateSelectedItem(int index) {
    selectedItem = index;
    update();
  }

  changeTheme() {
    isDarkTheme = !isDarkTheme;

    if (!isDarkTheme) {
      Get.changeTheme(PandaTheme.dark());
    } else {
      Get.changeTheme(PandaTheme.light());
    }
    update();
  }
}
