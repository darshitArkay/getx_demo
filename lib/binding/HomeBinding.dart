import 'package:flutter_get_demo/controller/HomeController.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
