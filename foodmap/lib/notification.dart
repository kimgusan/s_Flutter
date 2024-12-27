import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// 안드로이드와 iOS에 알림을 띄우기 위한 작업 클래스
class FlutterLocalNotification {
  // private 생성자로 객체 생성 방지
  FlutterLocalNotification._();

  // FlutterLocalNotificationsPlugin의 인스턴스 생성
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // 초기화 메서드
  static Future<void> init() async {
    // 안드로이드 초기화 설정
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('mipmap/ic_launcher');

    // iOS 초기화 설정
    DarwinInitializationSettings iosInitializationSetting =
        const DarwinInitializationSettings(
      requestAlertPermission: false, // 알림 표시 권한 요청 여부
      requestBadgePermission: false, // 뱃지 표시 권한 요청 여부
      requestSoundPermission: false, // 알림 소리 권한 요청 여부
    );

    // 플랫폼별 초기화 설정 통합
    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSetting,
    );

    // 초기화 호출
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static requestNotificationPermission() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  // 알림을 띄우는 메서드
  static Future<void> showNotification() async {
    // 안드로이드 알림 세부 정보 설정
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      "foodmap", // 채널 ID
      "foodmap", // 채널 이름
      channelDescription: 'channel description', // 채널 설명
      importance: Importance.max, // 알림 중요도 (최대)
      priority: Priority.max, // 알림 우선순위 (최대)
      showWhen: false, // 알림 시간 표시 여부
    );

    // iOS 및 안드로이드 공통 알림 세부 정보 설정
    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: DarwinNotificationDetails(badgeNumber: 1), // iOS 뱃지 표시 설정
    );

    // 알림 표시
    await flutterLocalNotificationsPlugin.show(
      0, // 알림 ID
      'test title', // 알림 제목
      'test body', // 알림 내용
      notificationDetails, // 알림 세부 정보
    );
  }
}
