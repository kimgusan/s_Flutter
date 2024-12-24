// 네이버 지도
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyMapAppState();
}

class MyMapAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Test Title',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Dialog Title"),
                      content: const Text("Dialog Content"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text("Close"),
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text("Button Click"),
            ),
          ),
        ),
      ),
    );
  }
}
