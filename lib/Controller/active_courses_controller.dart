//active_courses_controller

import 'package:berlitz/Client/Client.dart';
import 'package:get/get.dart';

class active_courses_controller extends GetxController {
  getactive_courses_controller() async {
    myClient().getCourse();

    update();
  }

}
