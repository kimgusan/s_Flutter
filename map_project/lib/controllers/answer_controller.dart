import 'package:get/get.dart';
import 'package:map_project/controllers/question_controller.dart';
import 'package:map_project/assets/data/answer/answer_data.dart';

class AnswerController extends GetxController {
  // question controller 의 리스트 값을 알기 위해 사용 (결과 제출 시 초기화 필요)
  final QuestionController questionController =
      Get.find<QuestionController>(); // 선택된 답변 관리

  var totalScore = 0.obs; // 총 점수 관리
  var status = "".obs; // 노후 준비 상태
  var recommendation = "".obs; // 추천 내용 노후 준비 상태
  var products = <int>[].obs; // 추천 상품 목록
  var finalImage = "".obs; // 최종 이미지
  var imageRecommendation = "".obs; // 이미지 추천 메세지

  void calculateAnswer() {
    // score 점수 확인 후 +1 을 하는게 맞는지 score 그대로 적는게 맞는지 확인 필요
    totalScore.value = questionController.selectedAnswers
        .fold<int>(0, (sum, score) => sum + (score != null ? score + 1 : 0));

    if (totalScore.value < 30) {
    } else if (totalScore <= 40) {
      _setResult(0, [4, 0, 1]);
    } else if (totalScore <= 50) {
      _setResult(1, [4, 2, 0]);
    } else if (totalScore <= 60) {
      _setResult(2, [4, 3, 1]);
    } else if (totalScore <= 70) {
      _setResult(3, [4, 2, 3]);
    } else if (totalScore <= 80) {
      _setResult(4, [4, 0, 1]);
    } else {
      _setResult(5, [4, 3, 2]);
    }
  }

  // 결과 데이터를 설정하는 함수
  void _setResult(int index, List<int> productIndices) {
    status.value = answerRecommendation[index]['status']!;
    recommendation.value = answerRecommendation[index]['recommendation']!;
    products.value = productIndices;
    finalImage.value = answerResults[index]['path']!;
    imageRecommendation.value = answerResults[index]['text']!;
  }
}
