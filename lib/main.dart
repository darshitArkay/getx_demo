import 'package:flutter/material.dart';
import 'package:flutter_get_demo/binding/HomeBinding.dart';
import 'package:flutter_get_demo/binding/NextBinding.dart';
import 'package:flutter_get_demo/ui/HomeScreen.dart';
import 'package:flutter_get_demo/ui/NextScreen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/homeScreen",
      getPages: [
        GetPage(
          name: "/homeScreen",
          page: () => HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: "/nextScreen",
          page: () => NextScreen(),
          binding: NextBinding(),
        ),
      ],
    );
  }
}
