import 'package:get/get.dart';

class AuthController extends GetxController {
    var checked = false.obs;

  void toggleChecked(bool value) {
    checked.value = value;
  }
}
