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
---
```
- scaffold 안에 들어가는 것들 (화면 구성 요소)

  - appbar
  - body
  - floatingActionButton
  - drawer
  - bottomNavigationBar
``` 

- Row (행 배열)
- Column (열 배열)