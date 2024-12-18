import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

class Player {
  String? name;

  Player();
}

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // 과거 사용된 부분
        // backgroundColor: const Color(0xFFE7266C),

        // scaffold 전체 배경
        scaffoldBackgroundColor: const Color(0xFFE7626C),
        // 앱의 전반적인 배경 테마로 사용되는 색상
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
