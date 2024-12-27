import 'package:flutter/material.dart';
import 'package:foodmap/countController.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              init: CountController(),
              builder: (_) =>
                  Text("현재 카운트: ${Get.find<CountController>().counter}"),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Get.find<CountController>().increse(),
                  child: const Text("증가"),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () => Get.find<CountController>().decrese(),
                  child: const Text("감소"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
