import 'package:dizi_ayraci_deneme2/features/dizi/presentation/state_management/controller/dizi_controller.dart';

import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<DiziController>(DiziController());
  }
}
