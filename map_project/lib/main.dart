import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_project/widgets/survey_list.dart';
import 'package:map_project/widgets/answer.dart';
import 'package:map_project/widgets/modals/privacy_modal.dart';
import 'package:map_project/widgets/modals/qrCode_modal.dart';
import 'package:map_project/widgets/submit_summary.dart';
import "package:map_project/widgets/question.dart";
import 'package:map_project/widgets/vanity_caculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Moneyterview Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: "NonoSansKR",
            ),
        useMaterial3: true,
      ),
      // initialRoute: '/',
      initialRoute: '/surveyList',
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage()),
        GetPage(name: '/qrLinkModal', page: () => const QrLinkModal()),
        GetPage(name: '/privacyModal', page: () => const PrivacyModal()),
        GetPage(name: '/submitSummary', page: () => const SubmitSummary()),
        GetPage(name: '/question', page: () => QuestionPage()),
        GetPage(name: '/answer', page: () => AnswerPage()),
        GetPage(name: '/surveyList', page: () => SurveyList()),
        GetPage(name: '/vanityCalc', page: () => VanityCalc()),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFEBF8FF),
              Color(0xFFE9D8FD),
            ],
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 448,
                child: Image.asset(
                  'lib/assets/images/logo/logo_main_daeyeon.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 448),
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "로그인 방식을 선택하세요",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2D3748),
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 20, bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 30),
                                          child: SvgPicture.asset(
                                            'lib/assets/images/main_image/btn_kakao.svg',
                                            width: 128,
                                            height: 128,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(right: 30),
                                          child: GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) => Dialog(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  child: QrLinkModal(),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                              'lib/assets/images/main_image/btn_qr_login.webp',
                                              width: 128,
                                              height: 128,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => Dialog(
                            child: PrivacyModal(),
                          ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline_outlined,
                      size: 20,
                      color: Colors.blue[600],
                    ),
                    SizedBox(width: 3),
                    Text(
                      "개인 정보 처리 방침",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
