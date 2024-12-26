import 'package:foodmap/models/albums.dart';
import 'package:foodmap/repository/album_repository.dart';
import 'package:rxdart/rxdart.dart';

// AlbumBloc 클래스: BLoC 패턴에서 앨범 데이터를 관리하고 스트림으로 제공하는 역할
class AlbumBloc {
  // AlbumRepository 인스턴스 생성
  // 실제 데이터(Albums) 가져오는 로직(HTTP 요청, DB, ...)을 담당
  final AlbumRepository _albumRepository = AlbumRepository();
  // PublishSubject<Albums>: RxDart에서 제공하는 주제(Subject)
  // - 내부적으로 Stream + Sink 역할을 동시에 수행
  // - allAlbums 스트림을 구독하는 곳(UI 등)에 새로 가져온 Albums 데이터를 전달
  final PublishSubject<Albums> _albumFetcher = PublishSubject<Albums>();

  // 외부에서 구독할 수 있는 스트림 (읽기 전용)
  // UI 등이 allAlbums를 listen/StreamBuilder로 구독하면,
  // _albumFetcher에 add된 데이터를 실시간으로 받아볼 수 있다.
  Stream<Albums> get allAlbums => _albumFetcher.stream;

  // fetchAllAlbums(): 앨범 데이터를 가져와서 스트림에 전달하는 메서드
  // Future<void>로 비동기 실행
  Future<void> fetchAllAlbums() async {
    Albums albums = await _albumRepository.fetchAllAlbums();
    // sink는 StreamController의 속성으로, 데이터를 스트림에 추가하는 데 사용됩니다.
    _albumFetcher.sink.add(albums);
  }

  // dispose(): 더 이상 해당 BLoC 객체가 필요 없을 때 호출
  // _albumFetcher.close()로 스트림을 닫아, 메모리 누수 방지
  dispose() {
    _albumFetcher.close();
  }
}
