import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/restaurant/domain/entity/restaurant.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/state_management/controller/restaurant_controller.dart';

import 'package:get/get.dart';

class DeleteRestaurant2 extends StatelessWidget {
  const DeleteRestaurant2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();

          
          Get.find<RestaurantController>().deleteRestaurant(2);
        },
        child: Text("Delete beybibeybi"));
  }
}
