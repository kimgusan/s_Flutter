import 'package:flutter/material.dart';

class QrLinkModal extends StatelessWidget {
  const QrLinkModal({super.key});

  @override
  Widget build(BuildContext context) {
    // 화면 크기 가져오기
    final screenSize = MediaQuery.of(context).size;

    return Center(
      child: Stack(
        children: [
          SizedBox(
            child: Container(
              width: 310,
              height: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset(
                      "lib/assets/images/modal/imageQR.jpg",
                      width: 256,
                      height: 256,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("QR 코드를 스캔하여 설문조사를 시작하세요."),
                ],
              ),
            ),
          ),
          Positioned(
            top: -4,
            right: -10,
            child: IconButton(
              icon: Icon(
                Icons.close,
              ),
              onPressed: () => Navigator.of(context).pop(),
              tooltip: "닫기",
            ),
          )
        ],
      ),
    );
  }
}
