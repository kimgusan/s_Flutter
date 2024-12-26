import './album.dart';

class Albums {
  late List<Album> albums;

  Albums({required this.albums});

  Albums.fromJson(List<dynamic> json) {
    // 빈 리스트를 생성하는 정적 메소드
    albums = List<Album>.empty(growable: true);
    for (dynamic val in json) {
      albums.add(Album.fromJson(val));
    }
  }
}
