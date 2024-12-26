import 'package:flutter/material.dart';
import 'package:foodmap/bloc/album_bloc.dart';
import 'package:foodmap/models/albums.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  // 인스턴스화
  final AlbumBloc _albumBlock = AlbumBloc();

  @override
  void initState() {
    _albumBlock.fetchAllAlbums();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "BLoc 패턴 예제",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: StreamBuilder<Albums>(
          stream: _albumBlock.allAlbums,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Albums? albumList = snapshot.data;
              return ListView.builder(
                itemCount: albumList?.albums.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ID: ${albumList?.albums[index].id.toString()}"),
                        Text("Title: ${albumList?.albums[index].title}"),
                      ],
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
