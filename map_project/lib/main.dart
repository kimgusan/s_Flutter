import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_project/controllers/question_controller.dart';
import 'package:map_project/widgets/survey_list.dart';
import 'package:map_project/widgets/answer.dart';
import 'package:map_project/widgets/modals/privacy_modal.dart';
import 'package:map_project/widgets/modals/qrCode_modal.dart';
import 'package:map_project/widgets/submit_summary.dart';
import "package:map_project/widgets/question.dart";
import 'package:map_project/widgets/vanity_caculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Moneyterview Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: "NonoSansKR",
            ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage()),
        GetPage(name: '/qrLinkModal', page: () => const QrLinkModal()),
        GetPage(name: '/privacyModal', page: () => const PrivacyModal()),
        GetPage(name: '/submitSummary', page: () => const SubmitSummary()),
        GetPage(name: '/question', page: () => QuestionPage()),
        GetPage(name: '/answer', page: () => AnswerPage()),
        GetPage(name: '/surveyList', page: () => SurveyList()),
        GetPage(name: '/vanityCalc', page: () => VanityCalc()),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SurveyList();
  }
}
