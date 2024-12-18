# Flutter

-   크로스 플랫폼.

1. 다른 Framework들은 OS를 통하여 버튼이나 근사한 애니메이션 등의 모든 요소를 만들어달라고 요청하는 직접적인 소통을 하는 반면, Flutter는 C나 C++로 짜인 **엔진**을 통하여 Framework를 동작시키고 UI를 그려낸다. (직접적 소통이 아니라서 OS에 대한 어떠한 제약 사항이 없다.)
2. 안드로이드, 윈도우 등의 플렛폼이 엔진을 동작하면 엔진은 "runner"프로젝트를 열어 엔진을 실행시키고 우리가 짠 Dart Flutter 코드를 동작시켜 화면에 UI를 보여준다.
3. Flutter : 엔진을 어플리케이션 내부에 집어넣기 -> 우리가 짠 Dart 코드 컴파일하기
4. 유저가 어플리케이션을 실행시킬 때 엔진을 가동시키는 "runner"프로젝트를 실행시킨 후, 엔진이 모든 UI를 Framework와 함께 그려준다.
5. Embedder(= "runner"프로젝트) : 특정 플렛폼에 특화된 것
6. iOS, 안드로이드, 맥OS, 윈도우, 리눅스를 위한 다양한 Embedder이 존재한다.
7. Embedder의 역할: 엔진 가동시키기

-   엔진을 또다른 VM(가상 머신)이라고 생각해도 된다. 가상머신이 코드를 실행시키기 때문에 OS 에 구애받지 않고 코드를 실행시켜준다.

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

<img src="image_wallet.png" alt="Flutter logic image" width="20%" />

# Pomodors 동적 프로젝트 (Statefull)
- main_pomodors.dart / home_screen.dart 참고  

<img src="image_pomodors.png" alt="Flutter logic image" width="20%" />

## Flutter 프로젝트 생성

- vscode 로 실행키기기 위해서는 시뮬래이터, 또는 웹 페이지를 개별로 실행시켜야한다. (debug 모드)
- 웹에서도 모바일 앱을 만들 수 있으며 크로스 플랫폼의 특징을 가지고 있다.

```bash
flutter create my_app
```

- 프로젝트 이름은 소문자로 시작해야 한다.
- 프로젝트 이름은 띄어쓰기가 있으면 안된다.
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
- Flexible은 자식 위젯의 크기를 유연하게 조절할 수 있게 해주는 위젯입니다.
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
