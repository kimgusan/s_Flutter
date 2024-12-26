import 'package:flutter/material.dart';
import 'package:foodmap/models/album.dart';
import 'package:foodmap/provider/album_provider.dart';
import 'package:provider/provider.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late List<Album> albumList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[50],
          centerTitle: true,
          title: const Text(
            "Provider 패턴 실습",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Consumer<AlbumProvider>(
          builder: (context, provider, child) {
            albumList = provider.getAlbumList();
            return ListView.builder(
              itemCount: albumList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  child:
                      Text("${albumList[index].id}: ${albumList[index].title}"),
                );
              },
            );
          },
        ));
  }
}
