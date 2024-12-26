import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:foodmap/models/album.dart';
import 'package:http/http.dart' as http;

class AlbumProvider with ChangeNotifier {
  final List<Album> _albumList = List.empty(growable: true);

  List<Album> getAlbumList() {
    _fetchAlbum();
    return _albumList;
  }

  void _fetchAlbum() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    final List<Album> result = jsonDecode(response.body)
        .map<Album>((json) => Album.fromJson(json))
        .toList();
    // clear 작업이 들어가는 이유는 새로고침이나 해당 부분이 남이있을 수 있기 때문
    _albumList.clear();
    _albumList.addAll(result);
    notifyListeners();
  }
}
