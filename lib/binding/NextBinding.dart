import 'package:flutter_get_demo/controller/NextController.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';

class NextBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NextController());
  }
}
