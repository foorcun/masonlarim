import 'package:restaurant_app_flutter/features/restaurant/presentation/state_management/controller/restaurant_controller.dart';

import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<RestaurantController>(RestaurantController());
  }
}
