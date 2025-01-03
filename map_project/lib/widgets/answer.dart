import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_project/controllers/answer_controller.dart';

class AnswerPage extends StatelessWidget {
  AnswerPage({super.key});
  final AnswerController answerController = Get.put(AnswerController());

  @override
  Widget build(BuildContext context) {
    // 계산이 안될경우 로딩 바를 띄우는 방향으로 나타내야 할 수 있음.
    answerController.calculateAnswer();
    return Scaffold(
      body: GetX<AnswerController>(
        builder: (controller) => Container(
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
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26, // 그림자 색상
                            blurRadius: 10, // 흐림 효과의 반경
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "노후 준비 결과",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "AI 추천상품 Top 3",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Icon(
                                        Icons.ads_click,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "총점",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "노후 준비 상태",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // 해당 부분은 그냥 이미지 호출만 진행하는 것으로 하고 조건문은 컨트롤러에서 가져오는 것으로 진행하자.
                            child: Text("${answerController.totalScore}"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            // 총점에 따른 표기 방식을 가져오는 방식으로 하자
                            child: Text(answerController.recommendation.value),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF2C61E6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Get.toNamed('/question');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "다시시작",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF2C61E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(12),
                        ),
                        onPressed: () {
                          Get.toNamed('/question');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "초기화면으로",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: GetX<AnswerController>(
  //       builder: (controller) => Container(
  //         width: double.infinity,
  //         height: double.infinity,
  //         decoration: BoxDecoration(
  //           gradient: LinearGradient(
  //             colors: [
  //               Color(0xFFEBF8FF),
  //               Color(0xFFE9D8FD),
  //             ],
  //           ),
  //         ),
  //         padding: EdgeInsets.all(20),
  //         child: Center(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Container(
  //                 alignment: Alignment.center,
  //                 width: 448,
  //                 child: Image.asset(
  //                   'lib/assets/images/logo/logo_main_daeyeon.png',
  //                   fit: BoxFit.contain,
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 15,
  //               ),
  //               Stack(
  //                 children: [
  //                   Container(
  //                     padding: EdgeInsets.all(20),
  //                     decoration: BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.circular(8),
  //                       boxShadow: [
  //                         BoxShadow(
  //                           color: Colors.black26, // 그림자 색상
  //                           blurRadius: 10, // 흐림 효과의 반경
  //                         ),
  //                       ],
  //                     ),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Text(
  //                           "노후 준비 결과",
  //                           style: TextStyle(
  //                             fontSize: 20,
  //                             fontWeight: FontWeight.bold,
  //                           ),
  //                         ),
  //                         SizedBox(height: 10),
  //                         Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             ElevatedButton(
  //                               style: ElevatedButton.styleFrom(
  //                                 backgroundColor: Colors.grey[200],
  //                                 shape: RoundedRectangleBorder(
  //                                   borderRadius: BorderRadius.circular(10),
  //                                 ),
  //                               ),
  //                               onPressed: () {},
  //                               child: Row(
  //                                 children: [
  //                                   Icon(
  //                                     Icons.arrow_back,
  //                                     color: Colors.black,
  //                                   ),
  //                                   Text(
  //                                     "초기화면으로",
  //                                     style: TextStyle(color: Colors.black),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 8),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.end,
  //                   children: [
  //                     ElevatedButton(
  //                       style: ElevatedButton.styleFrom(
  //                         backgroundColor: Color(0xFF2C61E6),
  //                         shape: RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(10),
  //                         ),
  //                         padding: EdgeInsets.all(12),
  //                       ),
  //                       onPressed: () {
  //                         Get.toNamed('/question');
  //                       },
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         children: [
  //                           Text(
  //                             "초기화면으로",
  //                             style: TextStyle(
  //                               color: Colors.white,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }