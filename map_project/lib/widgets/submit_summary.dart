import 'package:flutter/material.dart';

class SubmitSummary extends StatelessWidget {
  const SubmitSummary({super.key});

  @override
  Widget build(BuildContext context) {
    // scaffold 항목은 차후 불러오게 되면 필요가 없어질 예정입니다.
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 520,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                          child: SubmitTitle(
                              submitTitle: "-재무상태 분석 설문조사 이용정보 동의서-",
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 370,
                                ),
                                child: SingleChildScrollView(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SubmitContext(
                                          submitContext:
                                              "본 서비스는 개인정보 보호법 및 관련 볍령에 따라 고객님의 소중한 개인정보를 보호하며, 다음의 목적을 위해 개인정보를 수집 및 이용합니다.",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SubmitContext(
                                          submitContext: "회원가입 및 서비스 이용자 식별",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SubmitContext(
                                          submitContext: "서비스 제공 및 맞춤형 서비스 제공",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SubmitContext(
                                          submitContext:
                                              "고객 상담 및 서비스 관련 공지사항 전달",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SubmitContext(
                                          submitContext:
                                              "서비스 개선 및 분석을 위한 통계 자료 생성",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SubmitContext(
                                          submitContext: "부정 이용 방지 및 법적 분쟁 대응",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SubmitContext(
                                          submitContext: "수집하는 개인정보 항목",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          textAlign: TextAlign.left),
                                      SubmitContext(
                                          submitContext:
                                              "제공하신 정보는 원칙적으로 개인정보 수집 및 이용 목적이 달성된 후 지체 없이 파기됩니다. 단, 관련 법령에 따라 계약 관련 기록은 5년, 소비자 분쟁 기록은 3년간 보관됩니다.",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SubmitContext(
                                          submitContext:
                                              "회사는 이용자의 동의 없이는 개인정보를 제3자에게 제공하지 않으며, 필요한 경우 고객님의 동의를 받아 외부에 개인정보 처리 업무를 위탁할 수 있습니다.",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SubmitContext(
                                          submitContext:
                                              "개인정보는 보유 기간이 경과하거나 처리 목적이 달성되면 지체 없이 안전하게 파기됩니다.",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SubmitContext(
                                          submitContext:
                                              "이용자는 개인정보의 열람, 수정, 삭제, 처리 정지 요구를 할 수 있으며, 동의하지 않을 권리가 있습니다. 단, 필수 항목에 대한 동의를 거부하실 경우 서비스 이용에 제한이 있을 수 있습니다.",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.left),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              // 해당 부분은 설문조사 페이지로 이동하는 부분으로 라우팅 진행이 필요합니다.
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "설문 조사 시작",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 제목 위젯
class SubmitTitle extends StatelessWidget {
  final String submitTitle;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign = TextAlign.center;

  const SubmitTitle({
    super.key,
    required this.submitTitle,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      submitTitle,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}

// 내용 위젯
class SubmitContext extends StatelessWidget {
  final String submitContext;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const SubmitContext({
    super.key,
    required this.submitContext,
    required this.fontSize,
    required this.fontWeight,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(bottom: 3)),
        Text(
          submitContext,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          textAlign: textAlign,
        ),
      ],
    );
  }
}
