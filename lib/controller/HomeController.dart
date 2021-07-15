import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  increment() => count++;

  decrement() => count--;
}
