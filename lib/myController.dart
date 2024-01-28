import 'package:get/get.dart';

class MyController extends GetxController {
  // by the using of obs in variable that variable is going to be reactive state manager
  var count = 0.obs;
  incrementCounter() {
    count++;
  }
}
