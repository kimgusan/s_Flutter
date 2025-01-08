import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SurveyList extends StatelessWidget {
  const SurveyList({super.key});

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
                                      "원하는 설문조사를 선택하세요.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2D3748),
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 20, bottom: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 100,
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.zero,
                                                ),
                                              ),
                                              onPressed: () {
                                                Get.toNamed('/question');
                                              },
                                              child: Text(
                                                "노후준비 설문조사",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10), // 버튼 간 간격
                                        SizedBox(
                                          height: 100,
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.zero,
                                                ),
                                              ),
                                              onPressed: () {
                                                Get.toNamed("/vanityCalc");
                                              },
                                              child: Text(
                                                "허세 계산기",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
