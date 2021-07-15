import 'package:flutter/material.dart';
import 'package:flutter_get_demo/controller/HomeController.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text("You pressed this many times ${homeController.count}"),
            ),
          ),
          SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              // Get.to(() => NextScreen());
              Get.toNamed('/nextScreen');
            },
            // onPressed: () => Get.off(NextScreen()),
            child: Text("Next"),
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => homeController.increment(),
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
            heroTag: '1',
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () => homeController.decrement(),
            child: Icon(Icons.remove),
            backgroundColor: Colors.red,
            heroTag: '2',
          ),
        ],
      ),
    );
  }
}
