import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_project/main.dart';

class VanityCalc extends StatefulWidget {
  const VanityCalc({super.key});

  @override
  State<VanityCalc> createState() => _VaniryCalcState();
}

class _VaniryCalcState extends State<VanityCalc> {
  var setGender = "".obs;
  var setCategory = "".obs;

  @override
  void initState() {
    setGender = "".obs;
    super.initState();
  }

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
                                      "성별 선택",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2D3748),
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
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
                                                        CrossAxisAlignment.end,
                                                    textBaseline:
                                                        TextBaseline.alphabetic,
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
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
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
                                                        CrossAxisAlignment.end,
                                                    textBaseline:
                                                        TextBaseline.alphabetic,
                                                    children: [
                                                      Icon(
                                                        Icons.backpack_outlined,
                                                        size: 21,
                                                        color: Colors.black,
                                                      ),
                                                      SizedBox(width: 4),
                                                      Text(
                                                        "여성",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
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
                                            setCategory = 'car'.obs;
                                          },
                                          child: Container(
                                            height: 50,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Center(
                                                child: Text('자동차 허세지수')),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setCategory = 'bag'.obs;
                                          },
                                          child: Container(
                                            height: 50,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Center(
                                                child: Text('핸드백 허세지수')),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setCategory = 'IT'.obs;
                                          },
                                          child: Container(
                                            height: 50,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Center(
                                                child: Text('스마트기기 허세지수')),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setCategory = 'watch'.obs;
                                          },
                                          child: Container(
                                            height: 50,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Center(
                                                child: Text('명품시계 허세지수')),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setCategory = 'money'.obs;
                                          },
                                          child: Container(
                                            height: 50,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Center(
                                                child: Text('지출 허세지수')),
                                          ),
                                        ),
                                        BagCalc(),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 50,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFF2196F3),
                                                      Color(0xFF9C27B0)
                                                    ],
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
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

class BagCalc extends StatefulWidget {
  const BagCalc({super.key});

  @override
  State<BagCalc> createState() => _BagCalcState();
}

class _BagCalcState extends State<BagCalc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("월급 (원)"),
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
          Text("구매 가격 (원)"),
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
        ],
      ),
    );
  }
}
