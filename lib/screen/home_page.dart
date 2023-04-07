import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../model/usermodel.dart';

class MyHomePage extends StatelessWidget {
  final controller = Get.put(UserDataController());

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Get data using dependency injection"),
      ),
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Data using dependency injection"),
              Center(
                child: Text(
                  "Name ::  ${controller.userData.value.name}\nEmail :: ${controller.userData.value.email}",
                ),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () => controller.setUserData(UserData(
            name: "liza using dependency injection",
            email: "liza@example.com")),
        tooltip: "Click here and Set User Data",
        child: const Icon(Icons.add),
      ),
    );
  }
}
