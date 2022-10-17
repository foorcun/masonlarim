import 'package:flutter/material.dart';

import 'package:restaurant_app_flutter/features/restaurant/domain/entity/restaurant.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/state_management/controller/restaurant_controller.dart';

import 'package:get/get.dart';

class CreateRestaurant2 extends StatelessWidget {
  const CreateRestaurant2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();

          String json =
              '{"documentId": "beybibeybi","name": "restaurantName2"}';

          Restaurant restaurant = Restaurant.fromJson(json);

          // DataApi.createUser(restaurant);
          Get.find<RestaurantController>().createRestaurant(Restaurant.fromJson(json));
        },
        child: Text("Create beybibeybi"));
  }
}
