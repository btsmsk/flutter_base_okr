
import 'package:get/get.dart';

class DashboardController extends GetxController {

  var currentIndex = 0;

  void setCurrentTab(int index) {
    currentIndex = index;
    update();
  }
}
