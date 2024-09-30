import 'package:boxingotask/home_screen/home_controller.dart';
import 'package:get/get.dart';

class Homebinding extends Bindings {
  @override
  void dependencies() {
   Get.put<HomeController>(HomeController());
  }
  
} 