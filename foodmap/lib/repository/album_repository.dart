// API 프로바이더 데이터 레이어에서 데이터 가져온 부분을 가공하고
// 저장하는 부분

import 'package:foodmap/data_provider/api_provider.dart';
import 'package:foodmap/models/albums.dart';

class AlbumRepository {
  final AlbumApiProvider _albumApiProvider = AlbumApiProvider();

  Future<Albums> fetchAllAlbums() async => _albumApiProvider.fetchAlbumList();
}
