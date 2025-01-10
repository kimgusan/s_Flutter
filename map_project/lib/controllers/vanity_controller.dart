import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:map_project/assets/data/vanity/vanity_data.dart';

class VanityController extends GetxController {
  var monthPrice = ''.obs; // 월급
  var price = ''.obs; // 구매가격
  var resultTitle = ''.obs; // 계산 결과 제목 상태
  var resultScore = ''.obs; // 계산 결과 점수 상태

  // default (차량, 가방, 시계) 허세지수 계산 관련 로직
  void calculateVanityScore() {
    // 입력 값 유효성 검사
    final int monthMoney = int.tryParse(monthPrice.value) ?? 0;
    final int objectPrice = int.tryParse(price.value) ?? 0;

    if (monthMoney == 0) {
      resultScore.value = "월급은 0보다 커야하며 숫자만 입력하세요";
      return;
    }

    // 차량 허세 지수 계산 로직
    final vanityScore =
        (objectPrice / (monthMoney * 6) * 100).toStringAsFixed(2);

    // if(0<= double.parse(vanityScore) && double.parse(vanityScore <=1){
    //   return resultTitle.value = vanityLevel[0].values.first;
    // })
    if (0 < double.parse(vanityScore) && double.parse(vanityScore) <= 1) {
      resultTitle.value = vanityLevel[0].values.first;
    } else if (1 < double.parse(vanityScore) &&
        double.parse(vanityScore) <= 100) {
      resultTitle.value = vanityLevel[4].values.first;
    }

    resultScore.value = '허세지수: $vanityScore';
  }

  // 초기화
  void resetInput() {
    resultScore.value = '';
  }
}
