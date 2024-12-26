import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// NaverMapController 객체의 비동기 작업 완료를 나타내는 Completer 생성
  final Completer<NaverMapController> mapControllerCompleter = Completer();

  // 마커 찍는 함수
  void _addOverlay(NaverMapController controller) {
    const latLng = NLatLng(37.5665, 126.9780);
    final marker1 = NMarker(id: 'seoulCity', position: latLng);
    final circle = NCircleOverlay(
        id: 'seoulCity', center: latLng, color: Colors.red, radius: 50);
    // 지도에 오버레이 추가
    setState(() {
      controller.addOverlayAll(
        {marker1, circle},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        // 차후 추가될 햄버거 아이콘
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 30,
            color: Colors.red[300],
          ),
        ),
        title: Text(
          "Food Map List",
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.red[300],
          ),
        ),
        // 차후 검색 기능이 들어갈 부분
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              size: 35,
              color: Colors.red[300],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          // 네이버 지도
          NaverMap(
            options: const NaverMapViewOptions(
              indoorEnable: true, // 실내 맵 사용 가능 여부 설정
              locationButtonEnable: false, // 위치 버튼 표시 여부 설정
              consumeSymbolTapEvents: false, // 심볼 탭 이벤트 소비 여부 설정
              mapType: NMapType.basic,
              activeLayerGroups: [
                NLayerGroup.transit,
                NLayerGroup.mountain,
              ],
              zoomGesturesFriction: 1,
              // 지도 확장 영역 제한
              extent: NLatLngBounds(
                southWest: NLatLng(31.43, 122.37),
                northEast: NLatLng(44.35, 132.0),
              ),
              locale: Locale('en'),
            ),
            onMapReady: (controller) async {
              // 지도 준비 완료 시 호출되는 콜백 함수
              mapControllerCompleter
                  .complete(controller); // Completer에 지도 컨트롤러 완료 신호 전송
              _addOverlay(controller);
              log("onMapReady", name: "onMapReady");
            },
          ),
          // 지도위에 표시할 버튼
          const Positioned(
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    mapSelectSction(title: "단지"),
                    mapSelectSction(title: "오피"),
                    mapSelectSction(title: "중개"),
                    mapSelectSction(title: "호재"),
                    mapSelectSction(title: "학군"),
                    mapSelectSction(title: "노선만\n보기"),
                    mapSelectSction(title: "지도"),
                    mapSelectSction(title: "거리"),
                    mapSelectSction(title: "면적"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 차후 해당 위젯은 버튼으로 바뀔 수도 있음
class mapSelectSction extends StatelessWidget {
  final String title;

  const mapSelectSction({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, bottom: 7),
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 50,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        maxLines: 5,
        overflow: TextOverflow.visible,
      ),
    );
  }
}
