import 'package:flutter/material.dart';
import 'package:foodmap/notification.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FlutterLocalNotification.init();
    Future.delayed(const Duration(seconds: 1),
        () => FlutterLocalNotification.requestNotificationPermission());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX Example"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: TextButton(
              onPressed: () => FlutterLocalNotification.showNotification(),
              child: const Text("알림보내기")),
        ),
      ),
    );
  }
}
