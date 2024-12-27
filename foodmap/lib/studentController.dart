import 'package:get/get.dart';
import 'package:foodmap/models/studentModel.dart';

class StudentController extends GetxController {
  RxList<Rx<Student>> studentList = [
    Student(studentID: 1, studentName: "Andrew", studentGrade: "A").obs,
    Student(studentID: 2, studentName: "Brian", studentGrade: "B").obs,
    Student(studentID: 3, studentName: "Catherine", studentGrade: "C").obs,
  ].obs;

  List<String> newStudentNames = ["Andrew2", "Brian2", "Catherine2"];
  List<String> newStudentGrades = ["A+", "B+", "C+"];

  void updateStudentName(String name, int index) {
    studentList[index].update((val) {
      val?.studentName = name;
    });
  }

  void updateStudentGrade(String grade, int index) {
    studentList[index].update((val) {
      val?.studentGrade = grade;
    });
  }
}
