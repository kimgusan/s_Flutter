import 'package:get/get.dart';

class CountController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  void increse() {
    _counter++;
    update();
  }

  void decrese() {
    _counter--;
    update();
  }
}
