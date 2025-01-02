import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// 해당 부분의 텍스트 모두 클래스로 구분하여 일관된 텍스트는 모두 그렇게 변경하여 작성할 것.
// (제목, 부제, 내용, 이메일)
class PrivacyModal extends StatelessWidget {
  const PrivacyModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Center(
                      child: Text(
                        "개인정보 처리방침",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "(주)대연피앤씨 개인정보 처리 방침",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 16),
                        Text(
                          "(주)대연피앤씨(이하 ‘회사’)는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련 법령에 따라 이용자의 개인정보를 보호하고, 이에 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위해 다음과 같이 개인정보 처리방침을 두고 있습니다. 개인정보처리방침은 관련 법령, 지침, 고시 또는 회사 정책의 변경에 따라 변경될 수 있으며 변경 내용은 웹사이트를 통해 공지할 예정입니다.",
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "제1조 개인정보 수집 항목",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "회사는 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.",
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "회원가입 시 수집될 수 있는 개인정보",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "카카오 계정 (이름, 아이디, 이메일, 생년월일, 핸드폰번호)",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "구글 계정 (이름, 아이디, 이메일)",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "서비스 이용과정 및 처리 과정에서 수집될 수 있는 개인정보",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "수집항목: 쿠키, 서비스이용기록(IP, 방문일시, 불량이용기록 등)",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "수집방법: 자동 생성 정보",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "제2조 개인정보 수집 방법",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "회사는 아래와 같은 방법을 통해 개인정보를 수집합니다.",
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "회원가입 및 서비스 이용 과정에서 이용자가 개인정보 수집에 대해 동의를 하고 직접 정보를 입력하는 경우",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "고객센터 및 담당직원을 통한 상담 과정에서 웹페이지, 메일, 팩스, 문자, 전화 등을 통해 이용자의 개인정보가 수집될 수 있습니다.",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "오프라인에서 진행되는 이벤트, 세미나 등에서 서면을 통해 개인정보가 수집될 수 있습니다.",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "제3조 개인정보 이용 목적",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "회원가입 및 본인인증",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "서비스 제공 및 맞춤형 서비스 제공",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "고객 상담 및 공지사항 전달",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "서비스 개선을 위한 통계 자료 생성",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "부정 이용 방지 및 법적 분쟁 대응",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "제4조 개인정보의 제3자 제공 및 위탁",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "회사는 원칙적으로 이용자의 동의 없이 개인정보를 외부에 제공하지 않습니다. 다만, 다음과 같은 경우 예외로 합니다.",
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "이용자가 사전에 동의한 경우",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "법령에 따른 요구가 있는 경우",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "제5조 개인정보 보유 및 파기",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "회사는 처리 목적이 달성되거나 법령에 따른 보존 기간이 종료된 경우 개인정보를 파기힙니다.",
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "계약 및 청약철회 기록: 5년",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "대금 결제 및 재화 공급 기록: 5년",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "소비자 불만 및 분쟁 처리 기록: 3년",
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "제6조 이용자의 권리",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "이용자는 언제든지 개인정보에 대한 열람, 수정, 삭제, 처리 정지를 요청할 수 있습니다.",
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            Expanded(
                                child: EmailLink(
                              emailTitle: "문의 이메일: ",
                              email: 'deayeonpnc@gmail.com',
                            )),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "문의",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "개인정보 보호 대연피앤씨: 최정만",
                              style: TextStyle(
                                fontSize: 13,
                                height: 1.4,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            EmailLink(
                                email: "deayeonpnc@gmail.com",
                                emailTitle: "이메일:  "),
                            Text(
                              "대표전화: 1577-9872",
                              style: TextStyle(
                                fontSize: 13,
                                height: 1.4,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          "시행일자: 2024년 11월 05일",
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("초기화면으로"),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EmailLink extends StatelessWidget {
  final String email;
  final String emailTitle;

  const EmailLink({super.key, required this.email, required this.emailTitle});

  Future<void> _launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=문의사항&body=안녕하세요, ',
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw '이메일을 열 수 없습니다. $emailUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(emailTitle),
        GestureDetector(
          onTap: () => _launchEmail(email),
          child: Text(
            email,
            style: TextStyle(
              fontSize: 13,
              height: 1.5,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
