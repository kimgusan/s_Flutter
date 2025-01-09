import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_project/controllers/vanity_controller.dart';

class VanityCalc extends StatefulWidget {
  const VanityCalc({super.key});

  @override
  State<VanityCalc> createState() => _VaniryCalcState();
}

class _VaniryCalcState extends State<VanityCalc> {
  final VanityController vanityController = Get.put(VanityController());
  var gender = "".obs;
  var category = "".obs;

  @override
  void initState() {
    gender = "".obs;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<VanityController>(
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calculate),
                      Text(
                        " 종합 허세지수 계산기 ",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.monetization_on_outlined,
                      ),
                    ],
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
                                constraints:
                                    const BoxConstraints(maxWidth: 448),
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
                                          "성별 선택",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF2D3748),
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10),
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        backgroundColor:
                                                            Colors.grey[200],
                                                      ),
                                                      onPressed: () {
                                                        // setGender = 'male'.obs;
                                                      },
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .car_crash_outlined,
                                                            size: 21,
                                                            color: Colors.black,
                                                          ),
                                                          SizedBox(width: 4),
                                                          Text(
                                                            "남성",
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10),
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        backgroundColor:
                                                            Colors.grey[200],
                                                      ),
                                                      onPressed: () {},
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .backpack_outlined,
                                                            size: 21,
                                                            color: Colors.black,
                                                          ),
                                                          SizedBox(width: 4),
                                                          Text(
                                                            "여성",
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            GestureDetector(
                                              onTap: () {
                                                category.value = 'car';
                                                controller.resetInput();
                                              },
                                              child: Container(
                                                height: 50,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                  child: Text('자동차 허세지수'),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                category.value = 'bag';
                                                controller.resetInput();
                                              },
                                              child: Container(
                                                height: 50,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                    child: Text('핸드백 허세지수')),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                category.value = 'IT';
                                              },
                                              child: Container(
                                                height: 50,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                    child: Text('스마트기기 허세지수')),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                category.value = 'watch';
                                                controller.resetInput();
                                              },
                                              child: Container(
                                                height: 50,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                    child: Text('명품시계 허세지수')),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                category.value = 'money';
                                              },
                                              child: Container(
                                                height: 50,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                    child: Text('지출 허세지수')),
                                              ),
                                            ),
                                            if (category.value != "")
                                              (category.value == "IT"
                                                  ? CalcITInput()
                                                  : category.value == "money"
                                                      ? CalcMoneyInput()
                                                      : CalcDefaultInput()),
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
        ),
      ),
    );
  }
}

class CalcAnswer extends StatelessWidget {
  const CalcAnswer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final VanityController controller = Get.find();

    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            controller.calculateVanityScore();
          },
          child: Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF2196F3), Color(0xFF9C27B0)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                '허세지수 계산하기',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Obx(
          () => controller.resultScore.value.isNotEmpty
              ? Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.resultTitle.value,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              controller.resultScore.value,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("💡 맞춤 컨설팅"),
                                      Text("소비패턴 데이터"),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ))
              : SizedBox.shrink(), // 빈 공간 반환
        )
      ],
    );
  }
}

class CalcDefaultInput extends StatefulWidget {
  const CalcDefaultInput({super.key});

  @override
  State<CalcDefaultInput> createState() => _CalcDefaultState();
}

class _CalcDefaultState extends State<CalcDefaultInput> {
  final VanityController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("월급 (원)"),
          ),
          TextField(
            onChanged: (value) => controller.monthPrice.value = value,
            decoration: InputDecoration(
              hintText: "월급을 입력하세요.",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("구매 가격 (원)"),
          ),
          TextField(
            onChanged: (value) => controller.price.value = value,
            decoration: InputDecoration(
              hintText: "가격을 입력하세요.",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          CalcAnswer(),
        ],
      ),
    );
  }
}

// 스마트기기 허세지수
class CalcITInput extends StatefulWidget {
  const CalcITInput({super.key});

  @override
  State<CalcITInput> createState() => _CalcITState();
}

class _CalcITState extends State<CalcITInput> {
  final RxString dropDownValue = '스마트폰 (24개월)'.obs;

  List<String> itList = ['스마트폰 (24개월)', '노트북 (36개월)', '테블릿 (48개월)'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("월급 (원)"),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "월급을 입력하세요.",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("구매 가격 (원)"),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "가격을 입력하세요.",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("고정 지출 (원)"),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "월 고정 지출액 (주거비, 생활비 등)",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("예상 사용 기간"),
          ),
          Obx(
            () => DropdownButtonFormField<String>(
              value: dropDownValue.value,
              isExpanded: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              onChanged: (String? newValue) {
                dropDownValue.value = newValue!;
              },
              items: itList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          // CalcAnswer()
        ],
      ),
    );
  }
}

// 지출 허세지수
class CalcMoneyInput extends StatefulWidget {
  const CalcMoneyInput({super.key});

  @override
  State<CalcMoneyInput> createState() => _CalcMoneyState();
}

class _CalcMoneyState extends State<CalcMoneyInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("월급 (원)"),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "월급을 입력하세요.",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("월 사치품 지출액 (원)"),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "가격을 입력하세요.",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("고정 지출 (원)"),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "월 고정 지출액 (주거비, 생활비 등)",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          // CalcAnswer()
        ],
      ),
    );
  }
}
