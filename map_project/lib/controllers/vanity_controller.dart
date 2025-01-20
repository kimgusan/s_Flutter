import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:map_project/assets/data/vanity/vanity_data.dart';

class VanityController extends GetxController {
  var monthPrice = ''.obs; // 월급
  var price = ''.obs; // 구매가격
  var fixedExpenses = ''.obs; // 고정지출
  var expectedPeriod = ''.obs; // 예상 사용 기간
  var resultTitle = ''.obs; // 계산 결과 제목 상태
  var resultScore = ''.obs; // 계산 결과 점수 상태
  var resultAdvice = ''.obs; // 계산 결과 맞춤 컨설팅 상태
  var resultColor = Colors.black.obs; // 초기 색상

  // default (차량, 가방, 시계) 허세지수 계산 관련 로직
  void calculateVanityScore(String category) {
    // 입력 값 유효성 검사
    // 월급
    final int monthMoney = int.tryParse(monthPrice.value) ?? 0;
    // 구매가격 (매물가격)
    final int objectPrice = int.tryParse(price.value) ?? 0;
    // 예상 사용 기간
    late int deviceUsePeriod = 0;
    // 고정지출
    int fixedExpensesValue = int.tryParse(fixedExpenses.value) ?? 0;

    if (expectedPeriod.value == "스마트폰 (24개월)") {
      deviceUsePeriod = 24;
    } else if (expectedPeriod.value == "노트북 (36개월)") {
      deviceUsePeriod = 36;
    } else if (expectedPeriod.value == "테블릿 (48개월)") {
      deviceUsePeriod = 48;
    }

    // 허세지수 결과
    late double vanityScore = 0.0;

    if (monthMoney == 0) {
      resultScore.value = "월급은 0보다 커야합니다.";
      return;
    }

    // 차량 허세 지수 계산 로직 (해당 부분은 switch 구문이나 car, bag 같은 로직을 구분할 수 있는 방법이 필요.)
    // cateogry 항목을 사용하여 계산 로직 구성
    switch (category) {
      // 치량 허세 지수
      case 'car':
        // 6개월 급여
        vanityScore = objectPrice / (monthMoney * 6);
        updateResultColor(vanityScore);
        // 허세지수 결과
        resultTitle.value = getVanityLevelTitle(vanityScore, category);
        resultAdvice.value = getVanityAdvice(vanityScore, category);
        break;
      case 'bag':
        // 연봉의 10%
        vanityScore = objectPrice / (monthMoney * 12 * 0.1);
        updateResultColor(vanityScore);
        resultTitle.value = getVanityLevelTitle(vanityScore, category);
        resultAdvice.value = getVanityAdvice(vanityScore, category);
        break;
      case 'IT':
        // 조건: 월급보다 고정지출이 더 높아서 음수인 경우
        if (objectPrice - fixedExpensesValue < 0) {
          resultTitle.value = vanityLevel[4].values.first;
          resultScore.value = "매우 위험한 상태입니다.";
          resultAdvice.value = "매우 위험한 소비패턴을 가지고 있습니다.";
          resultColor.value = Colors.red;
          return;
        }

        vanityScore =
            objectPrice / (monthMoney - fixedExpensesValue) * deviceUsePeriod;
        updateResultColor(vanityScore);
        resultTitle.value = getVanityLevelTitle(vanityScore, category);
        resultAdvice.value = getVanityAdvice(vanityScore, category);
        break;
      case 'watch':
        // 12개월 급여
        vanityScore = objectPrice / (monthMoney * 12);
        updateResultColor(vanityScore);
        resultTitle.value = getVanityLevelTitle(vanityScore, category);
        resultAdvice.value = getVanityAdvice(vanityScore, category);
        break;
      case 'expense':
        // 조건: 월급보다 고정지출이 더 높아서 음수인 경우
        if (objectPrice - fixedExpensesValue < 0) {
          resultTitle.value = vanityLevel[4].values.first;
          resultScore.value = "매우 위험한 상태입니다.";
          resultAdvice.value = "매우 위험한 소비패턴을 가지고 있습니다.";
          resultColor.value = Colors.red;
          return;
        }
        vanityScore = (objectPrice - fixedExpensesValue) / (monthMoney);
        updateResultColor(vanityScore);
        resultTitle.value = getVanityLevelTitle(vanityScore, category);
        resultAdvice.value = getVanityAdvice(vanityScore, category);
        break;
    }

    resultScore.value = vanityScore.toStringAsFixed(2);
  }

  // 허세지수 title 함수
  String getVanityLevelTitle(double vanityScore, String category) {
    // 1. 0 보다 작은 경우
    if (vanityScore < 0) {
      return vanityLevel[0].values.first;
    }
    // 2. 1 보다 값이 작은 경우
    else if (vanityScore <= 1) {
      return vanityLevel[0].values.first;
    }
    // 2. 1.5 보다 값이 작은 경우
    else if (vanityScore <= 1.5) {
      return vanityLevel[1].values.first;
    }
    // 3. 2 보다 값이 작은 경우
    else if (vanityScore <= 2) {
      return vanityLevel[2].values.first;
    }
    // 4. 2.5 보다 값이 작은 경우
    else if (vanityScore <= 2.5) {
      return vanityLevel[3].values.first;
    }
    // 그 외
    else {
      return vanityLevel[4].values.first;
    }
  }

  // 허세지수 결과에 따른 조언 함수
  String getVanityAdvice(double vanityScore, String category) {
    if (vanityScore < 0) {
      return "건전한 소비습관을 가져야합니다.";
    }
    // low
    else if (vanityScore <= 1.5) {
      return vanityAdviceContext["low"]?[category] ?? "";
    } // medium
    else if (vanityScore <= 2.5) {
      return vanityAdviceContext["medium"]?[category] ?? "";
    } // high
    else {
      return vanityAdviceContext["high"]?[category] ?? "";
    }
  }

  // 허세지수 점수에 따른 색상 업데이트 함수
  void updateResultColor(double vanityScore) {
    // 1. 0 보다 작은 경우
    if (vanityScore < 0) {
      resultColor.value = Colors.pink;
    }
    // 2. 1 보다 값이 작은 경우
    else if (vanityScore <= 1) {
      resultColor.value = Colors.green;
    }
    // 2. 1.5 보다 값이 작은 경우
    else if (vanityScore <= 1.5) {
      resultColor.value = Colors.blue;
    }
    // 3. 2 보다 값이 작은 경우
    else if (vanityScore <= 2) {
      resultColor.value = Colors.yellow;
    }
    // 4. 2.5 보다 값이 작은 경우
    else if (vanityScore <= 2.5) {
      resultColor.value = Colors.orange;
    }
    // 그 외
    else {
      resultColor.value = Colors.red;
    }
  }

  // 초기화
  void resetInput() {
    resultScore.value = '';
  }

  // 차량 리스트에 대하여 개별적으로 계산하는 클래스 생성
  Map<String, dynamic> updatePriceAndRecalculate(
      int newPrice, String category) {
    // 새로운 가격으로 신규 계산 (차량가격)
    final newObjectPrice = newPrice;
    // 월급
    final int salary = int.tryParse(monthPrice.value) ?? 0;
    // 허세지수 결과
    double newVanityScore = 0.0;
    String title = "";
    String advice = "";
    Color color = Colors.black;

    if (salary == 0) {
      return {
        "vanityScore": 0.0,
        "title": "",
        "advice": "",
        "color": color,
      };
    }

    // 차량 허세 지수 계산 로직 (해당 부분은 switch 구문이나 car, bag 같은 로직을 구분할 수 있는 방법이 필요.)
    // cateogry 항목을 사용하여 계산 로직 구성
    switch (category) {
      // 치량 허세 지수
      case 'car':
        // 6개월 급여
        newVanityScore = newObjectPrice / (salary * 6);
        color = newUpdateResultColor(newVanityScore);
        // 허세지수 결과
        title = newGetVanityLevelTitle(newVanityScore, category);
        advice = getVanityAdvice(newVanityScore, category);
        break;
      case 'bag':
        // 연봉의 10%
        newVanityScore = newObjectPrice / (salary * 12 * 0.1);
        color = newUpdateResultColor(newVanityScore);
        title = newGetVanityLevelTitle(newVanityScore, category);
        advice = getVanityAdvice(newVanityScore, category);
        break;
    }

    return {
      "newVanityScore": newVanityScore,
      "title": title,
      "advice": advice,
      "color": color
    };
  }

  // 허세지수 title 함수
  String newGetVanityLevelTitle(double vanityScore, String category) {
    // 1. 0 보다 작은 경우
    if (vanityScore < 0) {
      return vanityLevel[0].values.first;
    }
    // 2. 1 보다 값이 작은 경우
    else if (vanityScore <= 1) {
      return vanityLevel[0].values.first;
    }
    // 2. 1.5 보다 값이 작은 경우
    else if (vanityScore <= 1.5) {
      return vanityLevel[1].values.first;
    }
    // 3. 2 보다 값이 작은 경우
    else if (vanityScore <= 2) {
      return vanityLevel[2].values.first;
    }
    // 4. 2.5 보다 값이 작은 경우
    else if (vanityScore <= 2.5) {
      return vanityLevel[3].values.first;
    }
    // 그 외
    else {
      return vanityLevel[4].values.first;
    }
  }

  // 허세지수 점수에 따른 색상 업데이트 함수
  Color newUpdateResultColor(double vanityScore) {
    // 1. 0 보다 작은 경우
    if (vanityScore < 0) {
      return Colors.pink;
    }
    // 2. 1 보다 값이 작은 경우
    else if (vanityScore <= 1) {
      return Colors.green;
    }
    // 2. 1.5 보다 값이 작은 경우
    else if (vanityScore <= 1.5) {
      return Colors.blue;
    }
    // 3. 2 보다 값이 작은 경우
    else if (vanityScore <= 2) {
      return Colors.yellow;
    }
    // 4. 2.5 보다 값이 작은 경우
    else if (vanityScore <= 2.5) {
      return Colors.orange;
    }
    // 그 외
    else {
      return Colors.red;
    }
  }
}
