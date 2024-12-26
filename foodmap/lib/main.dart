import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:foodmap/bloc/album_bloc.dart';
import 'package:foodmap/models/product.dart';
import 'package:foodmap/provider/album_provider.dart';
// import 'package:foodmap/view/album_view_bloc.dart';
import 'package:foodmap/view/album_view_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyMapAppState();
}

class MyMapAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  // 앨벌블록을 인스턴스로 만들어준다.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AlbumProvider>(
        create: (context) => AlbumProvider(),
        child: const AlbumView(),
      ),
    );
  }
}
