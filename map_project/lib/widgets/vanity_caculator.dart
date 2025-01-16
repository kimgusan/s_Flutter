import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:map_project/assets/data/vanity/vanity_data.dart';
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
                                                        backgroundColor: gender
                                                                    .value ==
                                                                'male'
                                                            ? Color(0xFF3B82F6)
                                                            : Colors.grey[200],
                                                      ),
                                                      onPressed: () {
                                                        gender.value = "male";
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
                                                            color:
                                                                gender.value ==
                                                                        'male'
                                                                    ? Colors
                                                                        .white
                                                                    : Colors
                                                                        .black,
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
                                                                  gender.value ==
                                                                          'male'
                                                                      ? Colors
                                                                          .white
                                                                      : Colors
                                                                          .black,
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
                                                        backgroundColor: gender
                                                                    .value ==
                                                                'female'
                                                            ? Color(0xFFDB2777)
                                                            : Colors.grey[200],
                                                      ),
                                                      onPressed: () {
                                                        gender.value = 'female';
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
                                                                .backpack_outlined,
                                                            size: 21,
                                                            color:
                                                                gender.value ==
                                                                        'female'
                                                                    ? Colors
                                                                        .white
                                                                    : Colors
                                                                        .black,
                                                          ),
                                                          SizedBox(width: 4),
                                                          Text(
                                                            "여성",
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: gender
                                                                          .value ==
                                                                      'female'
                                                                  ? Colors.white
                                                                  : Colors
                                                                      .black,
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
                                                    color:
                                                        category.value == 'car'
                                                            ? Color(0xFF2B5FE2)
                                                            : Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                    child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.car_crash,
                                                      size: 20, // 아이콘 크기 설정
                                                      color: category.value ==
                                                              'car'
                                                          ? Colors.white
                                                          : Colors.black,
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      '자동차 허세지수',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: category
                                                                      .value ==
                                                                  'car'
                                                              ? Colors.white
                                                              : Colors.black),
                                                    ),
                                                  ],
                                                )),
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
                                                  color: category.value == 'bag'
                                                      ? Color(0xFFdb2777)
                                                      : Colors.grey[200],
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.luggage,
                                                        size: 20, // 아이콘 크기 설정
                                                        color: category.value ==
                                                                'bag'
                                                            ? Colors.white
                                                            : Colors.black,
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Text(
                                                        '핸드백 허세지수',
                                                        style: TextStyle(
                                                            color: category
                                                                        .value ==
                                                                    'bag'
                                                                ? Colors.white
                                                                : Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                category.value = 'IT';
                                                controller.resetInput();
                                              },
                                              child: Container(
                                                height: 50,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color:
                                                        category.value == 'IT'
                                                            ? Color(0xFF9333EA)
                                                            : Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.phone_android,
                                                        size: 20, // 아이콘 크기 설정
                                                        color: category.value ==
                                                                'IT'
                                                            ? Colors.white
                                                            : Colors.black,
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Text(
                                                        '스마트기기 허세지수',
                                                        style: TextStyle(
                                                            color: category
                                                                        .value ==
                                                                    'IT'
                                                                ? Colors.white
                                                                : Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                ),
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
                                                    color: category.value ==
                                                            'watch'
                                                        ? Color(0xFFD97706)
                                                        : Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.watch,
                                                        size: 20, // 아이콘 크기 설정
                                                        color: category.value ==
                                                                'watch'
                                                            ? Colors.white
                                                            : Colors.black,
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Text(
                                                        '명품시계 허세지수',
                                                        style: TextStyle(
                                                            color: category
                                                                        .value ==
                                                                    'watch'
                                                                ? Colors.white
                                                                : Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                category.value = 'expense';
                                                controller.resetInput();
                                              },
                                              child: Container(
                                                height: 50,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: category.value ==
                                                            'expense'
                                                        ? Color(0xFF1BA34A)
                                                        : Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.wallet,
                                                        size: 20, // 아이콘 크기 설정
                                                        color: category.value ==
                                                                'expense'
                                                            ? Colors.white
                                                            : Colors.black,
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Text(
                                                        '지출 허세지수',
                                                        style: TextStyle(
                                                            color: category
                                                                        .value ==
                                                                    'expense'
                                                                ? Colors.white
                                                                : Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if (category.value != "")
                                              (category.value == "IT"
                                                  ? CalcITInput(
                                                      category: category.value)
                                                  : category.value == "expense"
                                                      ? CalcExpenseInput(
                                                          category:
                                                              category.value)
                                                      : CalcDefaultInput(
                                                          category:
                                                              category.value)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // 결과가 있는 경우에만 아래쪽에 리스트를 내보내는 설정
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 결과값 표기 위젯
class CalcAnswer extends StatefulWidget {
  final String category;

  const CalcAnswer({
    super.key,
    required this.category,
  });

  @override
  State<CalcAnswer> createState() => _CalcAnswerState();
}

class _CalcAnswerState extends State<CalcAnswer> {
  // 특정 카테고리에 해당하는 vanityItem 필터링 함수
  List<Map<String, dynamic>> getFilteredItems(String category) {
    final categoryData = vanityItems.firstWhere(
      (element) => element["category"] == category,
      orElse: () => {"items": []},
    );

    // "items" 필드를 List<Map<String, dynamic>>로 변환
    return (categoryData["items"] as List<dynamic>)
        .map((item) => item as Map<String, dynamic>)
        .toList();
  }

  // 카테고리 변경 시 기존과 같지않으면 다시 업데이트 하는 함수
  @override
  void didUpdateWidget(covariant CalcAnswer oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final VanityController controller = Get.find();
    final filteredItems = getFilteredItems(widget.category);

    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            controller.calculateVanityScore(widget.category);
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
                    color: Color(0xFFF8F9FA),
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
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: controller.resultColor.value,
                              ),
                            ),
                            Text(
                              "허세지수: ${controller.resultScore.value}",
                              style: TextStyle(
                                fontSize: 18,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "💡 맞춤 컨설팅",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(controller.resultAdvice.value),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(), // 빈 공간 반환
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF8F9FA),
            borderRadius: BorderRadius.circular(10),
          ),
          // 해당 부분에 card 위젯이 반복되어야 함. (layout builder사용 예정)
          child: Column(
            children: [
              Text("hello update: ${widget.category}"),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return GridView.builder(
                      padding: const EdgeInsets.all(16),
                      shrinkWrap: true, // 부모 크기에 맞게 조정
                      physics: NeverScrollableScrollPhysics(), // 자체 스크롤 제거
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        return VanityItemsCard(
                          category: "car",
                          item: filteredItems[index],
                        );
                      },
                    );
                  } else {
                    return ListView.builder(
                      padding: const EdgeInsets.all(16),
                      shrinkWrap: true, // 부모 크기에 맞게 조정
                      physics: NeverScrollableScrollPhysics(), // 자체 스크롤 제거
                      // itemCount: items.length,
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        return VanityItemsCard(
                          category: widget.category,
                          item: filteredItems[index],
                        );
                      },
                    );
                  }
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}

class CalcDefaultInput extends StatelessWidget {
  // 입력값에 쉼표 구분을 위한 컨트롤러
  final TextEditingController monthPriceInputController =
      TextEditingController();
  final TextEditingController priceInputController = TextEditingController();
  // 전달 받은 카테고리 항목
  final String category;

  CalcDefaultInput({
    super.key,
    required this.category,
  });

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
          CustomNumberField(
            hintText: "월급을 입력하세요",
            controller: monthPriceInputController,
            onChanged: (value) {
              controller.monthPrice.value = value;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("구매 가격 (원)"),
          ),
          CustomNumberField(
            hintText: "가격을 입력하세요.",
            controller: priceInputController,
            onChanged: (value) {
              controller.price.value = value;
            },
          ),
          CalcAnswer(
            category: category,
          ),
        ],
      ),
    );
  }
}

// 스마트기기 허세지수
class CalcITInput extends StatefulWidget {
  final String category;
  const CalcITInput({super.key, required this.category});

  @override
  State<CalcITInput> createState() => _CalcITState();
}

class _CalcITState extends State<CalcITInput> {
  final VanityController controller = Get.find();
  final RxString dropDownValue = '스마트폰 (24개월)'.obs;
  final monthPriceInputController = TextEditingController();
  final TextEditingController priceInputController = TextEditingController();
  final TextEditingController fixedExpenseInputController =
      TextEditingController();

  List<String> itList = ['스마트폰 (24개월)', '노트북 (36개월)', '테블릿 (48개월)'];

  @override
  void initState() {
    super.initState();
    controller.expectedPeriod.value = dropDownValue.value;
  }

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
          CustomNumberField(
            hintText: "월급을 입력하세요",
            controller: monthPriceInputController,
            onChanged: (value) => controller.monthPrice.value = value,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("구매 가격 (원)"),
          ),
          CustomNumberField(
            hintText: "가격을 입력하세요",
            controller: priceInputController,
            onChanged: (value) => controller.price.value = value,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("고정 지출 (원)"),
          ),
          CustomNumberField(
            hintText: "월 고정 지출액 (주거비, 생활비 등)",
            controller: fixedExpenseInputController,
            onChanged: (value) => controller.fixedExpenses.value = value,
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
                controller.expectedPeriod.value = newValue;
              },
              items: itList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          CalcAnswer(
            category: widget.category,
          ),
        ],
      ),
    );
  }
}

// 지출 허세지수
class CalcExpenseInput extends StatelessWidget {
  final String category;
  final VanityController controller = Get.find();
  CalcExpenseInput({super.key, required this.category});

  final TextEditingController monthPriceInputController =
      TextEditingController();
  final TextEditingController priceInputController = TextEditingController();
  final TextEditingController fixedExpenseInputController =
      TextEditingController();

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
          CustomNumberField(
            hintText: "월급을 입력하세요.",
            controller: monthPriceInputController,
            onChanged: (value) => controller.monthPrice.value = value,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("월 사치품 지출액 (원)"),
          ),
          CustomNumberField(
            hintText: "가격을 입력하세요.",
            controller: priceInputController,
            onChanged: (value) => controller.price.value = value,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("고정 지출 (원)"),
          ),
          TextField(
            onChanged: (value) => controller.fixedExpenses.value = value,
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
          CalcAnswer(
            category: category,
          ),
        ],
      ),
    );
  }
}

// 숫자 입력 포맷팅 커스텀위젯
class CustomNumberField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const CustomNumberField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (value) {
        // 숫자만 추출
        final rawValue = value.replaceAll(RegExp(r'[^0-9]'), '');
        // 포맷팅된 값으로 업데이트
        final formattedValue =
            NumberFormat("#,###").format(int.tryParse(rawValue) ?? 0);
        // 커서 위치 보정
        final cursorPosition = formattedValue.length;
        // 포맷팅된 값으로 TextField 업데이트
        controller.value = TextEditingValue(
          text: formattedValue,
          selection: TextSelection.collapsed(offset: cursorPosition),
        );
        // 외부 컨트롤러를 업데이트 하기 위한 상태 전달
        if (onChanged != null) {
          onChanged!(rawValue);
        }
      },
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}

// 허세지수 결과 card 위젯
class VanityItemsCard extends StatefulWidget {
  final String category;
  // 아이템 목록 가져오기
  final Map<String, dynamic> item;

  const VanityItemsCard({
    super.key,
    required this.category,
    required this.item,
  });

  @override
  State<VanityItemsCard> createState() => _VanityItemsCardState();
}

class _VanityItemsCardState extends State<VanityItemsCard> {
  // 숫자 포맷팅 함수
  String formatPrice(int price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(price); // 쉼표로 구분된 숫자 반환
  }

  @override
  Widget build(BuildContext context) {
    // 각각의 card 에 대해서 허세지수와 허세 점수를 다시 계산하기 위한 로직 생성 필요
    final VanityController controller = Get.find();

    void recalculateVanityScore(String category, int price) {
      controller.price.value = price.toString(); // 값 업데이트
      controller.calculateVanityScore(category); // 기존 계산 함수 호출
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${widget.item["price"]}"),
          SizedBox(
            height: 200,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                "${widget.item["image"]}",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.item["name"]}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "가격: ${formatPrice(widget.item["price"])} 원",
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
                Text(
                  "허세지수: vanityScore",
                  style: const TextStyle(color: Colors.red, fontSize: 14),
                ),
                Text(
                  "허세 타이틀: vanityScore",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
