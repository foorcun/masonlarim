import 'package:flutter/material.dart';

import 'package:restaurant_app_flutter/features/restaurant/domain/entity/restaurant.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/state_management/controller/restaurant_controller.dart';
import 'package:get/get.dart';

class UpdateRestaurant2 extends StatelessWidget {
  const UpdateRestaurant2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();

          String json =
              '{"id": 1,"restaurantName": "restaurantName2-updated"}';

          Restaurant restaurant = Restaurant.fromJson(json);

          // DataApi.updateUser(myUser);
          Get.find<RestaurantController>().updateRestaurant(Restaurant.fromJson(json));
        },
        child: Text("Update beybibeybi"));
  }
}
