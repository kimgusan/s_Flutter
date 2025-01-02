import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_project/controllers/question_controller.dart';

class QuestionPage extends StatelessWidget {
  QuestionPage({super.key});
  final QuestionController questionController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<QuestionController>(
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
                            "노후 준비 질문지",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            questionController
                                .questions[questionController
                                    .currentQuestionIndex.value]
                                .questionText,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ...List.generate(
                            questionController
                                .questions[questionController
                                    .currentQuestionIndex.value]
                                .answers
                                .length,
                            (index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: questionController.selectedAnswers[
                                              questionController
                                                  .currentQuestionIndex
                                                  .value] ==
                                          index
                                      ? Color(0xFF2C61E6)
                                      : Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    questionController.selectAnswer(index);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(
                                      left: 12,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      questionController
                                          .questions[questionController
                                              .currentQuestionIndex.value]
                                          .answers[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: questionController
                                                        .selectedAnswers[
                                                    questionController
                                                        .currentQuestionIndex
                                                        .value] ==
                                                index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  questionController.previousQuestion();
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "이전",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2C61E6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  if (questionController.selectedAnswers[
                                          questionController
                                              .currentQuestionIndex.value] !=
                                      null) {
                                    questionController.nextQuestion();
                                  }
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      questionController
                                                  .currentQuestionIndex.value ==
                                              questionController
                                                      .questions.length -
                                                  1
                                          ? "결과 보기"
                                          : "다음",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: AnimatePrograssBar(
                                    questionController: questionController),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${questionController.currentQuestionIndex.value + 1} / ${questionController.questions.length}",
                                  ),
                                ),
                              )
                            ],
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
      ),
    );
  }
}

class AnimatePrograssBar extends StatelessWidget {
  const AnimatePrograssBar({
    super.key,
    required this.questionController,
  });

  final QuestionController questionController;

  @override
  Widget build(BuildContext context) {
    final double progress =
        (questionController.currentQuestionIndex.value + 1) /
            questionController.questions.length;

    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: progress),
      duration: Duration(milliseconds: 200),
      curve: Curves.easeIn,
      builder: (context, value, child) {
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 8,
                color: Colors.grey[300],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF2C61E6),
                  ),
                  height: 8,
                  width: MediaQuery.of(context).size.width * value,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
