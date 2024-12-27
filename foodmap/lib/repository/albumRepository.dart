import 'package:foodmap/dataSource/dataSource.dart';
import 'package:foodmap/models/album.dart';

class AlbumRepository {
  final DataSource _datasource = DataSource();

  Future<List<Album>> getAlbumList() {
    return _datasource.getAlbumList();
  }
}
