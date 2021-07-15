import 'package:flutter/material.dart';
import 'package:flutter_get_demo/controller/HomeController.dart';
import 'package:flutter_get_demo/controller/NextController.dart';
import 'package:get/get.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  final homeController = Get.find<HomeController>();

  final nextController = Get.find<NextController>();

  // final nextController = Get.put(NextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of books"),
      ),
      body: Obx(
        () {
          if (nextController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: nextController.booksList.length,
            itemBuilder: (context, index) {
              return Text(nextController.booksList[index].title);
            },
          );
        },
      ),
    );
  }
}
