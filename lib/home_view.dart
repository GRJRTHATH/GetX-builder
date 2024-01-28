import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'myController.dart';

class HomeView extends StatelessWidget {
  var myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Obx example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX<MyController>(
              builder: (myController1) => Text(
                    "${myController1.count}",
                    style: TextStyle(fontSize: 30),
                  )),
          ElevatedButton(
              onPressed: () {
                myController.incrementCounter();
              },
              child: Text("Increment"))
        ],
      ),
    ));
  }
}
