import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmap/home.dart';
import 'package:foodmap/locator/locator.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
}
