# Flutter

-   크로스 플랫폼.

1. 다른 Framework들은 OS를 통하여 버튼이나 근사한 애니메이션 등의 모든 요소를 만들어달라고 요청하는 직접적인 소통을 하는 반면, Flutter는 C나 C++로 짜인 **엔진**을 통하여 Framework를 동작시키고 UI를 그려낸다. (직접적 소통이 아니라서 OS에 대한 어떠한 제약 사항이 없다.)
2. 안드로이드, 윈도우 등의 플렛폼이 엔진을 동작하면 엔진은 "runner"프로젝트를 열어 엔진을 실행시키고 우리가 짠 Dart Flutter 코드를 동작시켜 화면에 UI를 보여준다.
3. Flutter : 엔진을 어플리케이션 내부에 집어넣기 -> 우리가 짠 Dart 코드 컴파일하기
4. 유저가 어플리케이션을 실행시킬 때 엔진을 가동시키는 "runner"프로젝트를 실행시킨 후, 엔진이 모든 UI를 Framework와 함께 그려준다.
5. Embedder(= "runner"프로젝트) : 특정 플렛폼에 특화된 것
6. iOS, 안드로이드, 맥OS, 윈도우, 리눅스를 위한 다양한 Embedder이 존재한다.
7. Embedder의 역할: 엔진 가동시키기

-   엔진을 또다른 VM(가상��신)이라고 생각해도 된다. 가상머신이 코드를 실행시키기 때문에 OS 에 구애받지 않고 코드를 실행시켜준다.

![Flutter logic image](image.png)

---

React Native👍  
네이티브 앱 운영체제 상에서 가능한 위젯을 사용해야 하는 경우
디자인이 iOS 혹은 Android 앱처럼 보이게끔 만들고 싶은 경우

Flutter👍  
세밀한 디자인 요구사항이 있거나 100% 커스터마이징하고 싶은 경우
외부 패키지에 의존하지 않고 고수준의 애니메이션을 구현하고 싶은 경우

---

# Wallet 정적 프로젝트 (Stateless)
- main_wallet.dart / widgets_wallet folder 참고  

<img src="study_images/image_wallet.png" alt="Flutter logic image" width="20%" />

# Pomodors 동적 프로젝트 (Statefull)
- main_pomodors.dart / home_screen.dart 참고  

<img src="study_images/image_pomodors.png" alt="Flutter logic image" width="20%" />

# webtoon 링크 프로젝트 (Statefull / Stateless)
- main.dart / models / screens / services / widget 확인

- 웹툰 이미지의 경우 저작권 문제가 있을 수 있기 때문에 일부 masking 처리 

<div style="display: inline-block; margin-right: 10px;">
  <img src="study_images/image_webtoon_main.png" alt="Flutter logic image" width="20%" />
  <img src="study_images/image_webtoon_detail.png" alt="Flutter logic image" width="20%" />
  <img src="study_images/image_webtoon_link.png" alt="Flutter logic image" width="20%" />
</div>

## Flutter 프로젝트 생성

- vscode 로 실행키기기 위해서는 시뮬래이터, 또는 웹 페이지를 개별로 실행시켜야한다. (debug 모드)
- 웹에서도 모바일 앱을 만들 수 있으며 크로스 플랫폼의 특징을 가지고 있다.

```bash
flutter create my_app
```

- 프로젝트 이름은 소문자로 시작해야 한다.
- 프로젝트 이름은 띄어쓰기가 있으면 안된���.
- 프로젝트 이름은 특수문자가 있으면 안된다.
- 프로젝트 이름은 숫자로 시작해서는 안된다.

```
- 모든 것은 위젯이다. 블록처럼 위젯에 위젯을 쌓아가며 앱을 만드는 것.
- 위젯은 외우지 말고 찾아보며 사용하자. https://docs.flutter.dev/development/ui/widgets
- 모든 위젯은 build 메서드를 사용해야한다.(build 또한 자동 완성 가능)
- 모든 앱은 CupertinoApp 혹은 MaterialApp 중에 선택해야 하는데, materialapp이 훨씬 보기 좋으니 MaterialApp을 쓰자.
- 모든 화면은 Scaffold(구조)를 가져야 한다.
```

- material 디자인 (android, ios 디자인)
- cupertino 디자인 (ios 디자인)

## scaffold 안에 들어가는 것들 (화면 구성 요소)
- Scaffold는 Flutter에서 기본적인 화면 구조를 제공하는 핵심 위젯입니다. 말 그대로 '발판' 또는 '기반'이라는 의미로, 앱의 기본 레이아웃 구조를 형성합니다.


```
- appBar: 상단 앱바
- body: 메인 컨텐츠 영역
- floatingActionButton: 떠있는 액션 버튼
- bottomNavigationBar: 하단 네비게이션 바
- drawer: 좌측 서랍장 메뉴
- endDrawer: 우측 서랍장 메뉴
- backgroundColor: 배경색
``` 

- Row (행 배열)
- Column (열 배열ㅈ)
---

### Flutter const
- constant 는 수정할 수 없고, compile전에 그 value를 알 수 있는 변수.
- flutter 에서 최적화를 위해 사용 (미리 정해져있는 값을 대입)  
> 
    tip. code action  
    - 전구를 클릭하면 widget을 감싸거나 추출하거나 할 수 있음
    - mac : command + . : 클릭 시 단축키로도 사용가능

### widget 생성!!
---

## Alignment
- Row(행 배열) 에는 main 과 cross 가 있다.
    1. mainAxisAlignment: 가로축
    2. crossAxisAlignment: 세로축

- Column(열 배열) 에도 가로축과 세로축이 있다.
    1. mainAxisAlignment: 세로축
    1. crossAxisAlignment: 가로축

## Icon and Transforms
- Flutter는 900개 이상의 Material Design 아이콘 제공
```
Icon(
  Icons.star,  // 아이콘 종류
  size: 24.0,  // 크기
  color: Colors.yellow,  // 색상
)
```
- ransform은 위젯의 시각적 변형을 담당합니다.
```
// 1. 회전 (rotate)
Transform.rotate(
  angle: pi / 4,  // 45도 회전 (라디안 단위)
  child: Icon(Icons.star),
)

// 2. 크기 조절 (scale)
Transform.scale(
  scale: 2.0,  // 2배 확대
  child: Icon(Icons.star),
)

// 3. 이동 (translate)
Transform.translate(
  offset: Offset(50.0, 50.0),  // x축, y축으로 50픽셀 이동
  child: Icon(Icons.star),
)
```

```
- Transform 매트릭스 사용
Transform(
  transform: Matrix4.skewX(0.3),  // X축 기준 기울이기
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
  ),
)

- 애니메이션과 함께 사용
AnimatedContainer(
  duration: Duration(seconds: 1),
  transform: Matrix4.rotationZ(pi/4),
  child: Icon(Icons.star),
)
```

#### Tip. 유용한 Transform 팁
- origin: 변형의 중심점 설정 가능
- alignment: 변형 시 정렬 기준점 설정
- transform 결합: 여러 변형을 동시에 적용 가능

- SingleChildScrollView: 화면을 넘쳐 흘렀을 때 사용



---

## Widget
1. Stateless: 데이터가 이미 담겨져 있는 UI (고정)
2. Stateful: 데이터에 따라 변동되는 UI (유동)

### setState 함수

setState: State클래스에게 데이터가 변경되었다고 알려주는 함수  
(build 메소드가 다시 실행)
```
  왠만해서는 이렇게 사용할 것.
  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }

  or 
  
  void onClicked() {
    counter = counter + 1;
    setState(() {});
  }
```

### BuildContext

- context는 Text 이전에 있는 모든 상위 요소들에 대한 정보
- 상위 위젯들의 정보에 접근 가능
- Theme, MediaQuery 등 전역적으로 사용되는 데이터 접근 가능
```
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

위젯

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}

````
### Widjet Lifecycle
- initState: 부모요소의 값을 자식요소에서 변경하고 싶을 때 사용하는 메서드
```
@override
  void initState() {
    super.initState();
  }
```
- dispose는 Flutter의 StatefulWidget에서 위젯이 위젯 트리에서 영구적으로 제거될 때 호출되는 메서드입니다.
1. dispose가 필요한 이유
    - 메모리 누수 방지
    - 사용하지 않는 리소스 정리
    - 불필요한 리소스 소비 방지
    - 예) API 업데이트, 이벤트 리스너 구독 취소, form 리스너로부터 벗어날 때 사용.
```
  @override
  void dispose() {
    // 컨트롤러들 정리
    _textController.dispose();
    _scrollController.dispose();
    _animationController.dispose();
    
    // 스트림 구독 취소
    _streamSubscription.cancel();
    
    // 마지막에 반드시 호출
    super.dispose();
```

---
# Podomo
- 앱 시작 전에 theme 으로 앱의 전반적인 색상을 전해놓고 사용
```
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // 과거 사용된 부분
        // backgroundColor: const Color(0xFFE7266C),

        // scaffold 전체 배경
        // scaffoldBackgroundColor: const Color(0xFFE7266C),

        // 앱의 전반적인 배경 테마로 사용되는 색상
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7266C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const Scaffold(
        body: Center(),
      ),
    );
  }
}
```

### Flexible
- Flexible은 자식 위젯의 크기를 유연하게 조절 수 있게 해주는 위젯입니다.
- 장점
    1. 반응형 레이아웃 구현 용이
    2. 다양한 화면 크기에 대응 가능
    3. 비율 기반 레이아웃으로 유연한 UI 구성
```
Column(
  children: [
    // 화면의 30%
    Flexible(
      flex: 3,
      child: Container(
        color: Colors.red,
        child: Text('상단 영역'),
      ),
    ),
    // 화면의 70%
    Flexible(
      flex: 7,
      child: Container(
        color: Colors.blue,
        child: Text('하단 영역'),
      ),
    ),
  ],
)
```


#### Timer: 시간에 관련된 위젯
```
  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodors = totalPomodors + 1;
        isRunning = false;
        totalSeconds = twentyFiveMunutes;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
```



return duration.toString().split(".").first.substring(2, 7);
: 문자열기준으로 나누기, 첫번째 항목 가져오기, 문자열 자르기


### Expanded

- Expanded는 child 위젯이 사용 가능한 공간을 채우도록 확장시키는 위젯입니다.
- Row나 Column의 자식 위젯으로 사용
- 남은 공간을 채우고 싶을 때
- 위젯들 간의 비율을 조절하고 싶을 때
```
Column(
  children: [
    // 상단 고정 크기
    Container(
      height: 100,
      color: Colors.blue,
    ),
    // 중간 가변 크기 (남은 공간 모두 차지)
    Expanded(
      child: Container(
        color: Colors.red,
      ),
    ),
    // 하단 고정 크기
    Container(
      height: 100,
      color: Colors.green,
    ),
  ],
)
```

#### Expanded vs Flexible
- Expanded는 Flexible의 fit: FlexFit.tight를 사용한 특수한 경우
- Expanded는 반드시 사용 가능한 모든 공간을 차지
- Flexible은 필요한 만큼만 공간을 차지하고 싶을 때 사용
- Expanded는 레이아웃을 구성할 때 매우 유용한 위젯이며, 특히 반응형 UI를 만들 때 자주 사용됩니다.
--- 

# Webtoon 

## AppBar
- AppBar는 Flutter의 Material Design에서 제공하는 상단 네비게이션 바 위젯입니다. 
```
AppBar(
  backgroundColor: Colors.white,     // 배경색
  foregroundColor: Colors.black,     // 아이콘과 텍스트 색상
  elevation: 0,                      // 그림자 효과 (0은 그림자 없음)
  centerTitle: true,                 // 제목 중앙 정렬
  toolbarHeight: 60,                 // AppBar 높이
  shape: RoundedRectangleBorder(     // AppBar 모양
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(20),
    ),
  ),
)
```

## Data Fetching

- pub.dev 공식 패키지 보관소 (Flutter, Dart)  
  > node.js 이나, python의 PyPI 랑 비슷한 개념.

### Data Fetching
- http 패키지
1. 패키지 설치
```
dependencies:
  http: ^1.1.0  # 최신 버전 사용
```
2. 기본사용법
```
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final url = Uri.parse('https://api.example.com/data');
  final response = await http.get(url);
  
  if (response.statusCode == 200) {
    // 성공적으로 데이터를 받아온 경우
    print(response.body);
  } else {
    // 에러 처리
    throw Exception('Failed to load data');
  }
}
```
3. 주요 HTTP 메서드들
```
// GET 요청
final response = await http.get(url);

// POST 요청
final response = await http.post(
  url,
  headers: {'Content-Type': 'application/json'},
  body: jsonEncode({'key': 'value'}),
);

// DELETE 요청
final response = await http.delete(url);

// PUT 요청
final response = await http.put(url);
```

### async / await 비동기 처리 (Asynchronous function 비동기 함수)
비동기 처리는 작업이 완료될 때까지 프로그램의 실행을 멈추지 않고, 다른 작업을 계속 수행할 수 있게 해주는 프로그래밍 방식입니다. (side effect 를 기대한다)

### 생성자

```
1. WebtoonModel 클��스 정의

class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
```

```
2. API 데이터 처리

  Future<List<WebtoonModel>> getTodaysToos() async {
    List<WebtoonModel> webtoonInstances = [];

    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
```

## waitForWebToons
```
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async {
    webtoons = await ApiService.getTodaysToos();
    isLoading = false;
    setState(() {});
  }

  // 웹툰을 받아오는 함수를 최초에 실행시킨다.
  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

  @override
  Widget build(BuildContext context) {
    ... 중략
  }
```

### static const
- static: 클래스의 모든 인스턴스가 같은 값을 공유  
인스턴스마다 새로운 변수를 만들지 않아도 된다


### FutureBuilder
- FutureBuilder는 비동기 데이터를 UI에 쉽게 반영할 수 있게 해주는 유용한 위젯입니다.
```
body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("There is Data");
          }
          return const Text("loading...");
        },
      )
```

```
FutureBuilder<List<WebtoonModel>>(
  future: webtoons,
  builder: (context, snapshot) {
    if (snapshot.hasError) {
      return Center(
        child: Text('Error: ${snapshot.error}'),
      );
    }

    if (snapshot.hasData) {
      return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) {
          var webtoon = snapshot.data![index];
          return Text(webtoon.title);
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
      );
    }

    // 로딩 상태
    return const Center(
      child: CircularProgressIndicator(),
    );
  },
  ```
1. 상태 처리
- 에러 상태 (hasError)
- 데이�� 있는 상태 (hasData)
- 로딩 상태 (기본)
2. snapshot 객체
- hasData: 데이터 존재 여부
- hasError: 에러 존재 여부
- data: 실제 데이터
- error: 에러 정보

주요 특징:
1. 동시성 처리: 여러 작업을 동시에 처리할 수 있음
2. 블로킹 방지: 시간이 오래 걸리는 작업이 앱의 실행을 막지 않음
3. 효율적인 리소스 사용: CPU와 메모리를 효율적으로 활용


### Clip (클리핑)
1. clipBehavior: 자식 위젯이 부모 위젯의 영역을 벗어날 때 어떻게 처리할지 결정하는 속성입니다.
- 필요한 경우에만 클리핑을 사용하고, 가능한 성능이 좋은 옵션을 선택하는 것이 좋다.
```
enum Clip {
  none,      // 클리핑 없음 (기본값) / 가장 성능이 좋음
  hardEdge,  // 부드럽지 않은 직선 클리핑 / 적당한 성능
  antiAlias, // 부드러운 클리핑 (성능 영향 있음) / 부드럽지만 비용 발생
  antiAliasWithSaveLayer, // 가장 부드럽지만 성능 비용이 큼
}
```

## Detail Screen
0. GestureDetector: 사용자의 제스처(터치, 탭 등)를 감지하는 위젯입니다.

1. Navigator.push
- 새로운 화면으로 이동
- 스택 구조로 화면을 쌓음
- 뒤로가기 가능
2. MaterialPageRoute
- 머티리얼 디자인 스타일의 페이지 전환 애니메��션
- builder 패턴으로 새 화면 생성

#### 기본 구조
```
GestureDetector(
  onTap: () {
    // 탭했을 때 실행될 코드
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(
          title: title,
          thumb: thumb,
          id: id,
        ),
      ),
    );
  },
  child: YourWidget(),  // 탭 가능한 위젯
)
```

#### 다른 제스처 감지 옵션
```
GestureDetector(
  onTap: () {},      // 탭
  onDoubleTap: () {},// 더블 탭
  onLongPress: () {},// 길게 누르기
  onPanUpdate: () {},// 드래그
  child: Widget(),
)
```
#### 네비게이션 관련 다른 메서드들.
```
// 뒤로가기
Navigator.pop(context);

// 교체하기 (현재 화면을 새 화면으로 교체)
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => NewScreen()),
);

// 모든 화면을 지우고 새로 시작
Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => NewScreen()),
  (route) => false,
);
```

### Hero: 애니메이션이 들어가게 있도록 하는 widget
1. 에니메이션 효과
- 크기 변화
- 위치 이동
- 자연스러운 전환
- 사례: 이미지 상세보기, 아이콘 확대, 리스트에서 상세화면으로 전환
```
// 리스트 화면
GestureDetector(
  onTap: () => Navigator.push(...),
  child: Hero(
    tag: webtoon.id,  // 웹툰의 고유 ID를 태그로 사용
    child: Container(
      width: 250,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.network(webtoon.thumb),
    ),
  ),
)

// 상세 화면
Hero(
  tag: webtoon.id,  // 동일한 ID
  child: Container(
    width: 400,
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Image.network(webtoon.thumb),
  ),
)
```

## api services 사용 시 argument값을 요구하는 경우.

```

class DetailScreen extends StatefulWidget {
  final String id;  // 부모로부터 받은 ID
  
  const DetailScreen({
    super.key,
    required this.id,  // 필수 매개변수로 ID 받기
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // Future 변수 선언
  late Future<WebtoonDetailModel> webtoon;
  
  @override
  void initState() {
    super.initState();
    // widget.id를 통해 부모로부터 받은 ID 접근
    webtoon = ApiService.getToonById(widget.id);  // API 호출
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: webtoon,  // 초기화된 Future 사용
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // 데이터 표시
            return Text(snapshot.data!.title);
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
```

## Url_Launcher
- url_launcher는 Flutter에서 URL을 열거나 전화, 이메일 등의 외부 앱을 실행할 수 있게 해주는 패키지입니다.
- 각 플랫폼 별로 설정을 추가해줘야 사용 가능
(안드로이드: AndroidManifest.xml / ios: Info.plist)

```
import 'package:url_launcher/url_launcher.dart';

// URL 실행
final url = Uri.parse('https://example.com');
if (await canLaunchUrl(url)) {
  await launchUrl(url);
} else {
  throw 'Could not launch $url';
}

// 전화걸기
launchUrl(Uri.parse('tel:+1234567890'))
// 이메일 보내기
launchUrl(Uri.parse('mailto:example@example.com'))
// 문자 보내가
launchUrl(Uri.parse('sms:1234567890'))

```
1. LaunchMode 옵션
- externalApplication: 외부 브라우저로 열기
- inAppWebView: 앱 내부 웹뷰로 열기
- platformDefault: 플랫폼 기본 동작
- url_launcher는 앱에서 외부 리소스나 앱을 실행할 때 매우 유용한 패키지입니다.

## shared_preferences 
- Shared Preferences는 간단한 키-값 쌍을 로컬에 저장하는 데 사용되는 Flutter 플러그인입니다.
```
import 'package:shared_preferences/shared_preferences.dart';

// 데이터 저장
Future<void> saveData() async {
  final prefs = await SharedPreferences.getInstance();
  
  // 다양한 타입 저장
  await prefs.setString('name', 'John');
  await prefs.setInt('age', 25);
  await prefs.setBool('isLoggedIn', true);
  await prefs.setStringList('favorites', ['A', 'B', 'C']);
}

// 데이터 읽기
Future<void> loadData() async {
  final prefs = await SharedPreferences.getInstance();
  
  // 데이터 가져오기
  final name = prefs.getString('name') ?? 'No name';
  final age = prefs.getInt('age') ?? 0;
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  final favorites = prefs.getStringList('favorites') ?? [];
}
```
```
class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences prefs;
  List<String> likedToons = [];

  // 초기화
  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    final likedToons = prefs.getStringList('likedToons') ?? [];
    setState(() {
      this.likedToons = likedToons;
    });
  }

  // 데이터 저장
  Future<void> saveLikedToon(String id) async {
    final updatedToons = [...likedToons, id];
    await prefs.setStringList('likedToons', updatedToons);
    setState(() {
      likedToons = updatedToons;
    });
  }
```

1. 주의사항
- 민감한 데이터(비밀번호 등) 저장은 피해야 함
- 용량이 큰 데이터는 다른 저장소 사용 권장
- 비동기 처리 필요 (async/await 사용)

# Flutter App Project 

## MediaQeury
- MediaQuery는 Flutter에서 화면의 크기와 방향, 그리고 다양한 디바이스의 특성을 가져오는 데 사용되는 위젯입니다. 주로 반응형 디자인을 구현할 때 유용합니다.
- 반응형 size 구할 때 사용.
1. 화면크기 (MediaQuery.of(context).size)
2. 화면비율 (MediaQuery.of(context).devicePixcelRatio)
3. 상태바 비율 (MediaQuery.of(context).padding.top)
4. SafeArea 내 패딩 (MediaQuery.of(context).viewpadding.top / bottom)
5. Orientation - 가로,세로 (MediaQuery.of(context).orientation == Orientation.portrait / Orientation.landscape)

```
Container(
  width: MediaQuery.of(context).size.width / 2, // 화면 너비의 절반
  height: 100,
  color: Colors.blue,
)
```

## GestureDetector : 터치감지
1. TextButton: 텍스트 입력 버튼
2. GestureDetector 
- GestureDetector는 Flutter에서 사용자의 제스처(터치, 스와이프, 더블탭 등)를 감지하는 위젯입니다. 이 위젯을 사용하면 다양한 사용자 상호작용을 처리할 수 있습니다.

### 주요 제스쳐 
- onTap: 사용자가 탭했을 때 호출됩니다.
- onDoubleTap: 사용자가 더블탭했을 때 호출됩니다.
- onLongPress: 사용자가 길게 누를 때 호출됩니다.
- onPanUpdate: 사용자가 드래그할 때 호출됩니다.
```
GestureDetector(
  onTap: () {
    // 사용자가 탭했을 때 실행될 코드
    print("Tapped!");
  },
  child: Container(
    color: Colors.blue,
    width: 100,
    height: 100,
    child: Center(child: Text("Tap me")),
  ),
)
```

## ListView 
- ListView는 Flutter에서 스크롤 가능한 리스트를 생성하는 데 사용되는 위젯입니다. 주로 여러 개의 항목을 나열할 때 유용하며, 사용자가 스크롤하여 더 많은 항목을 볼 수 있도록 합니다.
- Column은 자식 위젯들을 수직으로 나열하는 위젯이지만, 화면에 표시할 수 있는 공간이 부족할 경우 오버플로우 오류가 발생할 수 있습니다. 반면, ListView는 스크롤 기능을 제공하므로, 항목이 많아도 문제없이 표시할 수 있습니다.
- ListView는 다양한 방법으로 항목을 생성할 수 있습니다. 예를 들어, ListView.builder를 사용하면 동적으로 항목을 생성할 수 있으며, ListView.separated를 사용하면 항목 사이에 구분선을 추가할 수 있습니다.
```
ListView(
  children: <Widget>[
    postContainer(title: "Title 1"),
    postContainer(title: "Title 2"),
    postContainer(title: "Title 3"),
    // 더 많은 항목 추가 가능
  ],
)

Widget ListTitle({String title = ''}){
  return ...
}

```

### ListView 효율적으로 사용하기
1. ListBuilder
- ListView.builder는 Flutter에서 긴 리스트를 효율적으로 생성하고 표시하기 위해 사용되는 위젯입니다. 이 위젯은 특히 항목의 수가 많거나 동적으로 생성되는 경우에 유용합니다.

- ListView.builder는 두 개의 주요 매개변수를 받습니다: itemCount와 itemBuilder.
- itemCount: 리스트에 표시할 항목의 총 수를 지정합니다.
- itemBuilder: 각 항목을 생성하는 함수로, 인덱스를 매개변수로 받아 해당 인덱스에 해당하는 위젯을 반환합니다.

```

// 변수 생성 (final 또는 var 로 생성)
final postList = [
  {
  title: "Title 1"
  },
  {
  title: "Title 2"
  },
]


ListView.builder(
  itemCount: 100, // 총 100개의 항목
  itemBuilder: (context, index) {
    
    return postList(
      title: postList[index]["title"] as String// 각 항목의 텍스트
    );
  },
)
```

## GridView : 표처럼 나타낼 수 있는 그리드 뷰
- GridView는 Flutter에서 항목을 격자 형태로 나열할 수 있는 위젯입니다. 주로 이미지 갤러리, 카드 목록, 또는 그리드 형식으로 데이터를 표시할 때 유용합니다.
- GridView는 항목을 행(row)과 열(column)로 구성된 격자 형태로 배치합니다. 이를 통해 여러 항목을 동시에 표시할 수 있으며, 사용자가 스크롤하여 더 많은 항목을 볼 수 있습니다.

### GridView.count
```
GridView.count(
  crossAxisCount: 2, // 한 행에 2개의 항목
  children: <Widget>[
    Container(color: Colors.red, height: 100),
    Container(color: Colors.green, height: 100),
    Container(color: Colors.blue, height: 100),
    Container(color: Colors.yellow, height: 100),
  ],
)
```

### GridView.builder
```
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3, // 한 행에 3개의 항목
  ),
  itemCount: 30, // 총 30개의 항목
  itemBuilder: (context, index) {
    return Card(
      color: Colors.primaries[index % Colors.primaries.length],
      child: Center(child: Text('Item $index')),
    );
  },
```

### GridView 효율적으로 사용하기
```
GridView.builder(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // 한 행에 2개의 항목
    crossAxisSpacing: 15.0, // 항목 간의 수평 간격
    mainAxisSpacing: 15.0, // 항목 간의 수직 간격
  ),
  itemCount: 20, // 총 20개의 항목
  itemBuilder: (context, index) {
    return Container(
      color: Colors.primaries[index % Colors.primaries.length], // 색상 설정
      child: Center(
        child: Text(
          'Item $index',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  },
),
```
## Scroll 기능 구현
1. SingleChildScrollView
- 자식 위젯의 높이가 부모 위젯(화면)을 초과하면 전체 위젯이 스크롤됩니다.
- SingleChildScrollView 내부에 특정 위젯(예: Container, Column)의 높이가 고정되면 그 고정된 영역만 스크롤됩니다.  
부모 위젯의 크기와 관계없이 자식 위젯의 크기에 따라 동작이 달라집니다.


## Align 정렬 기능 구현


--- 
# Map Project
```
1. leading
- AppBar의 가장 왼쪽에 위치
- 하나의 위젯만 배치 가능
- 보통 뒤로가기 버튼이나 메뉴 아이콘으로 사용
- Scaffold에 drawer가 있으면 자동으로 메뉴 아이콘 표시
2. title
AppBar의 중앙에 위치 (centerTitle 속성으로 조절 가능)
일반적으로 앱이나 현재 화면의 제목
3. actions
- AppBar의 오른쪽에 위치
- 여러 위젯을 리스트로 배치 가능
- 검색, 설정, 더보기 등의 아이콘들을 배치
```

## Completer 
- 비동기 작업의 상태를 수동으로 완료하는 도구

## Stack 위젯
- 자식 위젯들을 겹쳐서 배치할 수 있기 때문에 버튼을 지도위에 오버레이 형태로 나타낼 수 있다.


## 이슈
1. naver map sdk 지원 (sdk version 23) / 2. 카카오 webview 를 이용한 지원

### 문제 
1. 안드로이드 빌드 안되는 증상 확인.  (해결)
- android.nonTransitiveRClass=false
  > (https://github.com/users/note11g/projects/2/views/2?filterQuery=comp&pane=issue&itconemId=61082506&issue=note11g%7Cflutter_naver_map%7C225)

2. kakao_map_flutter 사용하려고 했을 때 빌드 안되는 증상 발생
- :location 항목에 namespace를 추가하라는 문구 발생 => 실제로 location 모듈을 사용하지 않으나 명시히라라는 부분 확인
